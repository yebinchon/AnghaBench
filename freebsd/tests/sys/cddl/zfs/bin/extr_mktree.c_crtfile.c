
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int O_XATTR ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int open (char*,int,int) ;
 int openat (int,char*,int,int) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* strerror (int) ;
 int strlen (char*) ;
 scalar_t__ valloc (int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
crtfile(char *pname)
{
 int fd = -1;
 int afd = -1;
 int i, size;
 char *context = "0123456789ABCDF";
 char *pbuf;

 if (pname == ((void*)0)) {
  exit(1);
 }

 size = sizeof (char) * 1024;
 pbuf = (char *)valloc(size);
 for (i = 0; i < size / strlen(context); i++) {
  int offset = i * strlen(context);
  (void) snprintf(pbuf+offset, size-offset, "%s", context);
 }

 if ((fd = open(pname, O_CREAT|O_RDWR, 0777)) < 0) {
  (void) fprintf(stderr, "open(%s, O_CREAT|O_RDWR, 0777) failed."
      "\n[%d]: %s.\n", pname, errno, strerror(errno));
  exit(errno);
 }
 if (write(fd, pbuf, 1024) < 1024) {
  (void) fprintf(stderr, "write(fd, pbuf, 1024) failed."
      "\n[%d]: %s.\n", errno, strerror(errno));
  exit(errno);
 }
 (void) close(fd);
 free(pbuf);
}
