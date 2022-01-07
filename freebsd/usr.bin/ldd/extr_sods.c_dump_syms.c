
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_sym (int *) ;
 int printf (char*,...) ;
 int * sym_base ;
 unsigned long sym_count ;
 char* sym_name (unsigned long) ;
 scalar_t__* sym_used ;

__attribute__((used)) static void
dump_syms(void)
{
    unsigned long i;

    printf("  Symbols:\n");
    for (i = 0; i < sym_count; ++i) {
 printf("    %6lu%c ", i, sym_used[i] ? '*' : ' ');
 dump_sym(&sym_base[i]);
 printf(" %s\n", sym_name(i));
    }
}
