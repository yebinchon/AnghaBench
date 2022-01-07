
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long nz_size; int nlist; } ;


 int dump_sym (int *) ;
 int printf (char*,...) ;
 TYPE_1__* rtsym_base ;
 unsigned long rtsym_count ;
 char rtsym_name (unsigned long) ;
 scalar_t__* rtsym_used ;

__attribute__((used)) static void
dump_rtsyms(void)
{
    unsigned long i;

    printf("  Run-time symbols:\n");
    for (i = 0; i < rtsym_count; ++i) {
 printf("    %6lu%c ", i, rtsym_used[i] ? '*' : ' ');
 dump_sym(&rtsym_base[i].nlist);
 printf("/%-5ld %s\n", rtsym_base[i].nz_size, rtsym_name(i));
    }
}
