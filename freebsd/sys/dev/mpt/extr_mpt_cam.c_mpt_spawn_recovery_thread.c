
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int unit; int recovery_thread; } ;


 int kproc_create (int ,struct mpt_softc*,int *,int ,int ,char*,int ) ;
 int mpt_recovery_thread ;

__attribute__((used)) static int
mpt_spawn_recovery_thread(struct mpt_softc *mpt)
{
 int error;

 error = kproc_create(mpt_recovery_thread, mpt,
     &mpt->recovery_thread, 0,
                 0, "mpt_recovery%d", mpt->unit);
 return (error);
}
