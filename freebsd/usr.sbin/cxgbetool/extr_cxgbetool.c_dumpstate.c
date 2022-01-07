
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cudbg_dump {int len; int * data; int bitmap; scalar_t__ wr_flash; int member_0; } ;


 int CHELSIO_T4_CUDBG_DUMP ;
 int EINVAL ;
 int ENOMEM ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int close (int) ;
 int doit (int ,struct t4_cudbg_dump*) ;
 int errno ;
 int free (int *) ;
 int * malloc (int) ;
 int memset (int *,int,int) ;
 int open (char const*,int,int) ;
 int warn (char*,char const*) ;
 int warnx (char*) ;
 int write (int,int *,int) ;

__attribute__((used)) static int
dumpstate(int argc, const char *argv[])
{
 int rc, fd;
 struct t4_cudbg_dump dump = {0};
 const char *fname = argv[0];

 if (argc != 1) {
  warnx("dumpstate: incorrect number of arguments.");
  return (EINVAL);
 }

 dump.wr_flash = 0;
 memset(&dump.bitmap, 0xff, sizeof(dump.bitmap));
 dump.len = 8 * 1024 * 1024;
 dump.data = malloc(dump.len);
 if (dump.data == ((void*)0)) {
  return (ENOMEM);
 }

 rc = doit(CHELSIO_T4_CUDBG_DUMP, &dump);
 if (rc != 0)
  goto done;

 fd = open(fname, O_CREAT | O_TRUNC | O_EXCL | O_WRONLY,
     S_IRUSR | S_IRGRP | S_IROTH);
 if (fd < 0) {
  warn("open(%s)", fname);
  rc = errno;
  goto done;
 }
 write(fd, dump.data, dump.len);
 close(fd);
done:
 free(dump.data);
 return (rc);
}
