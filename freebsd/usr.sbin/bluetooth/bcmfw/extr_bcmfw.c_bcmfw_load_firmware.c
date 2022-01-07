
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BCMFW_BSIZE ;
 int BCMFW_BULK_EP ;
 int BCMFW_INTR_EP ;
 int LOG_ERR ;
 int O_RDONLY ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,char const*,int) ;
 int strerror (int ) ;
 int syslog (int ,char*,char const*,char,...) ;
 int usleep (int) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
bcmfw_load_firmware(char const *name, char const *md, char const *fw)
{
 char buf[BCMFW_BSIZE];
 int intr = -1, bulk = -1, fd = -1, error = -1, len;


 snprintf(buf, sizeof(buf), "/dev/%s.%d", name, BCMFW_INTR_EP);
 if ((intr = open(buf, O_RDONLY)) < 0) {
  syslog(LOG_ERR, "Could not open(%s). %s (%d)",
    buf, strerror(errno), errno);
  goto out;
 }


 snprintf(buf, sizeof(buf), "/dev/%s.%d", name, BCMFW_BULK_EP);
 if ((bulk = open(buf, O_WRONLY)) < 0) {
  syslog(LOG_ERR, "Could not open(%s). %s (%d)",
    buf, strerror(errno), errno);
  goto out;
 }





 if ((fd = open(md, O_RDONLY)) < 0) {
  syslog(LOG_ERR, "Could not open(%s). %s (%d)",
    md, strerror(errno), errno);
  goto out;
 }

 for (;;) {
  len = read(fd, buf, sizeof(buf));
  if (len < 0) {
   syslog(LOG_ERR, "Could not read(%s). %s (%d)",
     md, strerror(errno), errno);
   goto out;
  }
  if (len == 0)
   break;

  len = write(bulk, buf, len);
  if (len < 0) {
   syslog(LOG_ERR, "Could not write(/dev/%s.%d). %s (%d)",
     name, BCMFW_BULK_EP, strerror(errno),
     errno);
   goto out;
  }
 }

 close(fd);
 fd = -1;

 usleep(10);





 if (write(bulk, "#", 1) < 0) {
  syslog(LOG_ERR, "Could not write(/dev/%s.%d). %s (%d)",
    name, BCMFW_BULK_EP, strerror(errno), errno);
  goto out;
 }

 if (read(intr, buf, sizeof(buf)) < 0) {
  syslog(LOG_ERR, "Could not read(/dev/%s.%d). %s (%d)",
    name, BCMFW_INTR_EP, strerror(errno), errno);
  goto out;
 }

 if (buf[0] != '#') {
  syslog(LOG_ERR, "%s: Memory select failed (%c)", name, buf[0]);
  goto out;
 }





 if ((fd = open(fw, O_RDONLY)) < 0) {
  syslog(LOG_ERR, "Could not open(%s). %s (%d)",
    fw, strerror(errno), errno);
  goto out;
 }

 for (;;) {
  len = read(fd, buf, sizeof(buf));
  if (len < 0) {
   syslog(LOG_ERR, "Could not read(%s). %s (%d)",
     fw, strerror(errno), errno);
   goto out;
  }
  if (len == 0)
   break;

  len = write(bulk, buf, len);
  if (len < 0) {
   syslog(LOG_ERR, "Could not write(/dev/%s.%d). %s (%d)",
     name, BCMFW_BULK_EP, strerror(errno),
     errno);
   goto out;
  }
 }

 close(fd);
 fd = -1;

 if (read(intr, buf, sizeof(buf)) < 0) {
  syslog(LOG_ERR, "Could not read(/dev/%s.%d). %s (%d)",
    name, BCMFW_INTR_EP, strerror(errno), errno);
  goto out;
 }

 if (buf[0] != '.') {
  syslog(LOG_ERR, "%s: Could not load firmware (%c)",
    name, buf[0]);
  goto out;
 }

 usleep(500000);
 error = 0;
out:
 if (fd != -1)
  close(fd);
 if (bulk != -1)
  close(bulk);
 if (intr != -1)
  close(intr);

 return (error);
}
