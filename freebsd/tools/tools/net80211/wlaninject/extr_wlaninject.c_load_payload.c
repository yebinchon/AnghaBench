
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*) ;
 int open (char*,int ) ;
 int printf (char*,int,char*) ;
 int read (int,void*,int) ;

int load_payload(char *fname, void *buf, int len)
{
 int fd;
 int rc;

 if ((fd = open(fname, O_RDONLY)) == -1)
  err(1, "open()");

 if ((rc = read(fd, buf, len)) == -1)
  err(1, "read()");

 close(fd);
 printf("Read %d bytes from %s\n", rc, fname);
 return rc;
}
