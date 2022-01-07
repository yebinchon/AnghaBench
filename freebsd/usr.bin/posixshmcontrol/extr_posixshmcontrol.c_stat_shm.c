
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int stat_one_shm (char*,int,int) ;
 int usage () ;

__attribute__((used)) static int
stat_shm(int argc, char **argv)
{
 int c, i, ret, ret1;
 bool hsize, uname;

 hsize = 0;
 uname = 1;

 while ((c = getopt(argc, argv, "hn")) != -1) {
  switch (c) {
  case 'h':
   hsize = 1;
   break;
  case 'n':
   uname = 0;
   break;
  default:
   usage();
   return (2);
  }
 }
 argc -= optind;
 argv += optind;

 ret = 0;
 for (i = 0; i < argc; i++) {
  ret1 = stat_one_shm(argv[i], hsize, uname);
  if (ret1 != 0 && ret == 0)
   ret = ret1;
 }
 return (ret);
}
