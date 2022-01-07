
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_NOINPUT ;
 int EX_OK ;
 int EX_OSERR ;
 int O_RDONLY ;
 int close (int) ;
 int exit (int) ;
 int fsync (int) ;
 int open (char*,int ) ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 int fd;
 int i;
 int rval;

 if (argc < 2) {
  usage();

 }

 rval = EX_OK;
 for (i = 1; i < argc; ++i) {
  if ((fd = open(argv[i], O_RDONLY)) == -1) {
   warn("open %s", argv[i]);
   if (rval == EX_OK)
    rval = EX_NOINPUT;
   continue;
  }

  if (fsync(fd) == -1) {
   warn("fsync %s", argv[i]);
   if (rval == EX_OK)
    rval = EX_OSERR;
  }
  close(fd);
 }
 exit(rval);

}
