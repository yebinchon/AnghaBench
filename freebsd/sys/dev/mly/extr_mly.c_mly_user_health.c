
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mly_user_health {int HealthStatusBuffer; } ;
struct mly_softc {scalar_t__ mly_event_change; TYPE_2__* mly_mmbox; int mly_lock; } ;
struct mly_health_status {scalar_t__ change_counter; } ;
typedef int mh ;
struct TYPE_3__ {struct mly_health_status status; } ;
struct TYPE_4__ {TYPE_1__ mmm_health; } ;


 int EWOULDBLOCK ;
 int MLY_LOCK (struct mly_softc*) ;
 int MLY_UNLOCK (struct mly_softc*) ;
 int PCATCH ;
 int PRIBIO ;
 int copyin (int ,struct mly_health_status*,int) ;
 int copyout (struct mly_health_status*,int ,int) ;
 int mtx_sleep (scalar_t__*,int *,int,char*,int ) ;

__attribute__((used)) static int
mly_user_health(struct mly_softc *sc, struct mly_user_health *uh)
{
    struct mly_health_status mh;
    int error;


    if ((error = copyin(uh->HealthStatusBuffer, &mh, sizeof(mh))) != 0)
 return(error);


    MLY_LOCK(sc);
    error = EWOULDBLOCK;
    while ((error != 0) && (sc->mly_event_change == mh.change_counter))
 error = mtx_sleep(&sc->mly_event_change, &sc->mly_lock, PRIBIO | PCATCH,
     "mlyhealth", 0);
    mh = sc->mly_mmbox->mmm_health.status;
    MLY_UNLOCK(sc);


    error = copyout(&mh, uh->HealthStatusBuffer, sizeof(mh));
    return(error);
}
