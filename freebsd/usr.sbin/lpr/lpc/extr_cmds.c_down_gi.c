
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * args2line (int,char**) ;
 int * generic_msg ;
 char* generic_nullarg ;
 int * strdup (char*) ;

void
down_gi(int argc, char *argv[])
{


 if (generic_msg != ((void*)0))
  return;





 if (argc == 1) {
  generic_msg = strdup("printing disabled\n");
  return;
 }







 argc--;
 argv++;
 generic_msg = args2line(argc, argv);
 for (; argc > 0; argc--, argv++)
  *argv = generic_nullarg;
}
