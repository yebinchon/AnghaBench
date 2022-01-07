
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall {int * name; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,struct syscall*,int ) ;
 struct syscall* decoded_syscalls ;
 int entries ;
 int quad_fixup (struct syscall*) ;
 int syscalls ;

void
init_syscalls(void)
{
 struct syscall *sc;

 STAILQ_INIT(&syscalls);
 for (sc = decoded_syscalls; sc->name != ((void*)0); sc++) {



  STAILQ_INSERT_HEAD(&syscalls, sc, entries);
 }
}
