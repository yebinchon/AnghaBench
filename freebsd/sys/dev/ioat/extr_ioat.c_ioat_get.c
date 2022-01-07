
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {scalar_t__ refcnt; int submit_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ UINT32_MAX ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ioat_get(struct ioat_softc *ioat)
{

 mtx_assert(&ioat->submit_lock, MA_OWNED);
 KASSERT(ioat->refcnt < UINT32_MAX, ("refcnt overflow"));

 ioat->refcnt++;
}
