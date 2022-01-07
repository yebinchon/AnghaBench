
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct tty {int dummy; } ;
struct TYPE_5__ {TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_4__ {int adp; TYPE_2__* cur_scp; } ;


 TYPE_2__* sc_get_stat (struct tty*) ;
 int vidd_mmap (int ,int ,int *,int,int *) ;

__attribute__((used)) static int
sctty_mmap(struct tty *tp, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr)
{
    scr_stat *scp;

    scp = sc_get_stat(tp);
    if (scp != scp->sc->cur_scp)
 return -1;
    return vidd_mmap(scp->sc->adp, offset, paddr, nprot, memattr);
}
