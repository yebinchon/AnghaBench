
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBUSY ;
 int LOG_ERR ;
 int O_RDWR ;
 scalar_t__ errno ;
 int exit (int) ;
 int logmsg (int ,char*,char*) ;
 int open (char*,int ) ;
 int pidfile_fh ;
 int pidfile_remove (int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int
bpf_open(void)
{
 int fd;
 int n = 0;
 char device[sizeof "/dev/bpf000"];




 do {
  (void)sprintf(device, "/dev/bpf%d", n++);
  fd = open(device, O_RDWR);
 } while ((fd == -1) && (errno == EBUSY));

 if (fd == -1) {
  logmsg(LOG_ERR, "%s: %m", device);
  pidfile_remove(pidfile_fh);
  exit(1);
 }
 return fd;
}
