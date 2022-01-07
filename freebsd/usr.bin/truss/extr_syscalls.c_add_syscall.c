
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct syscall {int dummy; } ;
struct procabi {int extra_syscalls; struct syscall** syscalls; } ;
struct extra_syscall {size_t number; struct syscall* sc; } ;


 int STAILQ_INSERT_TAIL (int *,struct extra_syscall*,int ) ;
 int assert (int ) ;
 int entries ;
 struct extra_syscall* malloc (int) ;
 size_t nitems (struct syscall**) ;

__attribute__((used)) static void
add_syscall(struct procabi *abi, u_int number, struct syscall *sc)
{
 struct extra_syscall *es;

 if (number < nitems(abi->syscalls)) {
  assert(abi->syscalls[number] == ((void*)0));
  abi->syscalls[number] = sc;
 } else {
  es = malloc(sizeof(*es));
  es->sc = sc;
  es->number = number;
  STAILQ_INSERT_TAIL(&abi->extra_syscalls, es, entries);
 }
}
