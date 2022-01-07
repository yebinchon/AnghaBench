
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int mpt_disable_ints (struct mpt_softc*) ;

__attribute__((used)) static void
mpt_core_shutdown(struct mpt_softc *mpt)
{

 mpt_disable_ints(mpt);
}
