
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct mly_softc {int dummy; } ;
struct TYPE_4__ {int value; int scale; } ;
struct mly_command_ioctl {TYPE_1__ timeout; int opcode; int maximum_sense_size; int sense_buffer_address; } ;
struct mly_command {size_t mc_length; size_t mc_sense; int * mc_data; TYPE_3__* mc_packet; int mc_status; int mc_flags; } ;
struct TYPE_5__ {size_t data_size; } ;
struct TYPE_6__ {TYPE_2__ generic; struct mly_command_ioctl ioctl; } ;


 int ENOMEM ;
 int MDACMD_IOCTL ;
 int MLY_ASSERT_LOCKED (struct mly_softc*) ;
 int MLY_CMD_DATAIN ;
 int MLY_CMD_DATAOUT ;
 int MLY_TIMEOUT_SECONDS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int bcopy (TYPE_3__*,void*,size_t) ;
 int debug_called (int) ;
 int free (int *,int ) ;
 int * malloc (size_t,int ,int ) ;
 scalar_t__ mly_alloc_command (struct mly_softc*,struct mly_command**) ;
 int mly_immediate_command (struct mly_command*) ;
 int mly_release_command (struct mly_command*) ;

__attribute__((used)) static int
mly_ioctl(struct mly_softc *sc, struct mly_command_ioctl *ioctl, void **data, size_t datasize,
   u_int8_t *status, void *sense_buffer, size_t *sense_length)
{
    struct mly_command *mc;
    struct mly_command_ioctl *mci;
    int error;

    debug_called(1);
    MLY_ASSERT_LOCKED(sc);

    mc = ((void*)0);
    if (mly_alloc_command(sc, &mc)) {
 error = ENOMEM;
 goto out;
    }


    mci = &mc->mc_packet->ioctl;
    ioctl->sense_buffer_address = mci->sense_buffer_address;
    ioctl->maximum_sense_size = mci->maximum_sense_size;
    *mci = *ioctl;
    mci->opcode = MDACMD_IOCTL;
    mci->timeout.value = 30;
    mci->timeout.scale = MLY_TIMEOUT_SECONDS;


    if (data != ((void*)0)) {
 if (*data == ((void*)0)) {

     if ((mc->mc_data = malloc(datasize, M_DEVBUF, M_NOWAIT)) == ((void*)0)) {
  error = ENOMEM;
  goto out;
     }
     mc->mc_flags |= MLY_CMD_DATAIN;
 } else {
     mc->mc_data = *data;
     mc->mc_flags |= MLY_CMD_DATAOUT;
 }
 mc->mc_length = datasize;
 mc->mc_packet->generic.data_size = datasize;
    }


    if ((error = mly_immediate_command(mc)))
 goto out;


    *status = mc->mc_status;
    if ((mc->mc_sense > 0) && (sense_buffer != ((void*)0))) {
 bcopy(mc->mc_packet, sense_buffer, mc->mc_sense);
 *sense_length = mc->mc_sense;
 goto out;
    }


    if ((data != ((void*)0)) && (*data == ((void*)0)))
 *data = mc->mc_data;


    error = 0;

out:
    if (mc != ((void*)0)) {

 if (error && (mc->mc_data != ((void*)0)) && (*data == ((void*)0)))
     free(mc->mc_data, M_DEVBUF);
 mly_release_command(mc);
    }
    return(error);
}
