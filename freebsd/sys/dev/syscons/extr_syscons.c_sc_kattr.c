
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SC_KERNEL_CONS_ATTR ;
 size_t curcpu ;
 size_t nitems (int*) ;
 int * sc_console ;
 int* sc_kattrtab ;

__attribute__((used)) static int
sc_kattr(void)
{
    if (sc_console == ((void*)0))
 return (SC_KERNEL_CONS_ATTR);
    return (sc_kattrtab[curcpu % nitems(sc_kattrtab)]);
}
