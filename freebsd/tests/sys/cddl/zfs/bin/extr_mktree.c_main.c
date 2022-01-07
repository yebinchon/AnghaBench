
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atoi (int *) ;
 int getopt (int,char**,char*) ;
 int mktree (int *,int) ;
 scalar_t__ ndir ;
 scalar_t__ nfile ;
 scalar_t__ nlevel ;
 int * optarg ;
 int * pbasedir ;
 int usage (char*) ;

int
main(int argc, char *argv[])
{
 int c, ret;

 while ((c = getopt(argc, argv, "b:l:d:f:")) != -1) {
  switch (c) {
  case 'b':
   pbasedir = optarg;
   break;
  case 'l':
   nlevel = atoi(optarg);
   break;
  case 'd':
   ndir = atoi(optarg);
   break;
  case 'f':
   nfile = atoi(optarg);
   break;
  case '?':
   usage(argv[0]);
  }
 }
 if (nlevel < 0 || ndir < 0 || nfile < 0 || pbasedir == ((void*)0)) {
  usage(argv[0]);
 }

 ret = mktree(pbasedir, 1);

 return (ret);
}
