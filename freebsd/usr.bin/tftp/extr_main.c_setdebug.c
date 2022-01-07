
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* desc; } ;


 int debug ;
 int debug_find (char*) ;
 char* debug_show (int ) ;
 TYPE_1__* debugs ;
 int printf (char*,...) ;

__attribute__((used)) static void
setdebug(int argc, char *argv[])
{
 int i;

 if (argc != 1) {
  i = 1;
  while (i < argc)
   debug ^= debug_find(argv[i++]);
 }
 printf("The following debugging is enabled: %s\n", debug_show(debug));

 printf("\nThe following debugs are available:\n");
 i = 0;
 while (debugs[i].name != ((void*)0)) {
  printf("\t%s\t%s\n", debugs[i].name, debugs[i].desc);
  i++;
 }
}
