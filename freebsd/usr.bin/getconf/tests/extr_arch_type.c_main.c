
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int printf (char*) ;
 int stderr ;

int
main(void)
{
 bool known_arch_type;

 known_arch_type = 0;

 printf("LP64\n");
 known_arch_type = 1;
 if (known_arch_type)
  exit(0);

 fprintf(stderr, "unknown architecture type detected\n");
 assert(0);
}
