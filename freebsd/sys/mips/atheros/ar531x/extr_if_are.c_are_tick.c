
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct are_softc {int are_stat_callout; int are_miibus; } ;


 int ARE_LOCK_ASSERT (struct are_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct are_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
are_tick(void *xsc)
{
}
