
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct mly_softc {TYPE_2__* mly_mmbox; int mly_event_counter; int mly_event_waiting; int mly_event_change; } ;
struct mly_health_status {int next_event; int change_counter; } ;
struct mly_command_ioctl {int sub_ioctl; } ;
typedef int mci ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ mmm_health; } ;


 int EIO ;
 int MDACIOCTL_GETHEALTHSTATUS ;
 int M_DEVBUF ;
 int bcopy (struct mly_health_status*,int *,int) ;
 int bzero (struct mly_command_ioctl*,int) ;
 int debug (int,char*,int ,int ) ;
 int free (struct mly_health_status*,int ) ;
 int mly_ioctl (struct mly_softc*,struct mly_command_ioctl*,void**,int,scalar_t__*,int *,int *) ;

__attribute__((used)) static int
mly_get_eventstatus(struct mly_softc *sc)
{
    struct mly_command_ioctl mci;
    struct mly_health_status *mh;
    u_int8_t status;
    int error;


    bzero(&mci, sizeof(mci));
    mh = ((void*)0);
    mci.sub_ioctl = MDACIOCTL_GETHEALTHSTATUS;

    if ((error = mly_ioctl(sc, &mci, (void **)&mh, sizeof(*mh), &status, ((void*)0), ((void*)0))))
 return(error);
    if (status != 0)
 return(EIO);


    sc->mly_event_change = mh->change_counter;
    sc->mly_event_waiting = mh->next_event;
    sc->mly_event_counter = mh->next_event;


    bcopy(mh, &sc->mly_mmbox->mmm_health.status, sizeof(*mh));

    debug(1, "initial change counter %d, event counter %d", mh->change_counter, mh->next_event);

    free(mh, M_DEVBUF);
    return(0);
}
