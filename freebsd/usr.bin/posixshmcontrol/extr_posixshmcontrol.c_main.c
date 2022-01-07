
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opmode {int (* impl ) (int,char**) ;int cmd; } ;


 int exit (int) ;
 scalar_t__ nitems (struct opmode*) ;
 struct opmode* opmodes ;
 scalar_t__ strcmp (char*,int ) ;
 int stub1 (int,char**) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 const struct opmode *opmode;
 int i, ret;

 ret = 0;
 opmode = ((void*)0);

 if (argc < 2) {
  usage();
  exit(2);
 }
 for (i = 0; i < (int)nitems(opmodes); i++) {
  if (strcmp(argv[1], opmodes[i].cmd) == 0) {
   opmode = &opmodes[i];
   break;
  }
 }
 if (opmode == ((void*)0)) {
  usage();
  exit(2);
 }
 ret = opmode->impl(argc - 1, argv + 1);
 exit(ret);
}
