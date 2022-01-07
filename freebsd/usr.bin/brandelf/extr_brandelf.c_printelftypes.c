
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; int value; } ;


 TYPE_1__* elftypes ;
 int fprintf (int ,char*,...) ;
 size_t nitems (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static void
printelftypes(void)
{
 size_t elfwalk;

 fprintf(stderr, "known ELF types are: ");
 for (elfwalk = 0; elfwalk < nitems(elftypes); elfwalk++)
  fprintf(stderr, "%s(%u) ", elftypes[elfwalk].str,
      elftypes[elfwalk].value);
 fprintf(stderr, "\n");
}
