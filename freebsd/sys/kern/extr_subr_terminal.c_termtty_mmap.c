
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct tty {int dummy; } ;
struct terminal {TYPE_1__* tm_class; } ;
struct TYPE_2__ {int (* tc_mmap ) (struct terminal*,int ,int *,int,int *) ;} ;


 int stub1 (struct terminal*,int ,int *,int,int *) ;
 struct terminal* tty_softc (struct tty*) ;

__attribute__((used)) static int
termtty_mmap(struct tty *tp, vm_ooffset_t offset, vm_paddr_t * paddr,
    int nprot, vm_memattr_t *memattr)
{
 struct terminal *tm = tty_softc(tp);

 return (tm->tm_class->tc_mmap(tm, offset, paddr, nprot, memattr));
}
