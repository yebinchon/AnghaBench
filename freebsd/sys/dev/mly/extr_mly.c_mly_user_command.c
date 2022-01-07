
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_user_command {scalar_t__ DataTransferLength; scalar_t__ RequestSenseLength; int CommandStatus; int RequestSenseBuffer; int DataTransferBuffer; int CommandMailbox; } ;
struct mly_softc {int mly_lock; } ;
struct mly_command {scalar_t__ mc_length; int mc_flags; scalar_t__ mc_sense; scalar_t__ mc_resid; int * mc_data; int mc_status; int * mc_packet; int * mc_complete; } ;


 int ENOMEM ;
 int MLY_CMD_COMPLETE ;
 int MLY_CMD_DATAIN ;
 int MLY_CMD_DATAOUT ;
 int MLY_LOCK (struct mly_softc*) ;
 int MLY_UNLOCK (struct mly_softc*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PRIBIO ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,scalar_t__) ;
 int copyin (int ,int *,scalar_t__) ;
 int copyout (int *,int ,scalar_t__) ;
 int free (int *,int ) ;
 int * malloc (scalar_t__,int ,int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ mly_alloc_command (struct mly_softc*,struct mly_command**) ;
 int mly_release_command (struct mly_command*) ;
 int mly_start (struct mly_command*) ;
 int mtx_sleep (struct mly_command*,int *,int ,char*,int ) ;

__attribute__((used)) static int
mly_user_command(struct mly_softc *sc, struct mly_user_command *uc)
{
    struct mly_command *mc;
    int error;


    MLY_LOCK(sc);
    if (mly_alloc_command(sc, &mc)) {
 MLY_UNLOCK(sc);
 return (ENOMEM);
    }
    MLY_UNLOCK(sc);


    mc->mc_length = (uc->DataTransferLength >= 0) ? uc->DataTransferLength : -uc->DataTransferLength;
    if (mc->mc_length > 0) {
 if ((mc->mc_data = malloc(mc->mc_length, M_DEVBUF, M_NOWAIT)) == ((void*)0)) {
     error = ENOMEM;
     goto out;
 }
    }
    if (uc->DataTransferLength > 0) {
 mc->mc_flags |= MLY_CMD_DATAIN;
 bzero(mc->mc_data, mc->mc_length);
    }
    if (uc->DataTransferLength < 0) {
 mc->mc_flags |= MLY_CMD_DATAOUT;
 if ((error = copyin(uc->DataTransferBuffer, mc->mc_data, mc->mc_length)) != 0)
     goto out;
    }


    bcopy(&uc->CommandMailbox, mc->mc_packet, sizeof(uc->CommandMailbox));


    mc->mc_complete = ((void*)0);


    MLY_LOCK(sc);
    if ((error = mly_start(mc)) != 0) {
 MLY_UNLOCK(sc);
 goto out;
    }
    while (!(mc->mc_flags & MLY_CMD_COMPLETE))
 mtx_sleep(mc, &sc->mly_lock, PRIBIO, "mlyioctl", 0);
    MLY_UNLOCK(sc);


    if (uc->DataTransferLength > 0)
 if ((error = copyout(mc->mc_data, uc->DataTransferBuffer, mc->mc_length)) != 0)
     goto out;


    if ((uc->RequestSenseLength > 0) && (mc->mc_sense > 0)) {
 if ((error = copyout(mc->mc_packet, uc->RequestSenseBuffer,
        min(uc->RequestSenseLength, mc->mc_sense))) != 0)
     goto out;
    }


    uc->DataTransferLength = mc->mc_resid;
    uc->RequestSenseLength = min(uc->RequestSenseLength, mc->mc_sense);
    uc->CommandStatus = mc->mc_status;
    error = 0;

 out:
    if (mc->mc_data != ((void*)0))
 free(mc->mc_data, M_DEVBUF);
    MLY_LOCK(sc);
    mly_release_command(mc);
    MLY_UNLOCK(sc);
    return(error);
}
