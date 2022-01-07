
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct amr_softc {int amr_state; scalar_t__ (* amr_poll_command ) (struct amr_command*) ;} ;
struct TYPE_2__ {int mb_blkcount; int mb_drive; int mb_lba; int mb_command; } ;
struct amr_command {int ac_flags; int ac_length; int ac_status; TYPE_1__ ac_mailbox; void* ac_data; } ;


 int AMR_BLKSIZE ;
 int AMR_CMD_DATAOUT ;
 int AMR_CMD_LWRITE ;
 int AMR_CMD_PRIORITY ;
 int AMR_STATE_INTEN ;
 int EIO ;
 struct amr_command* amr_alloccmd (struct amr_softc*) ;
 int amr_releasecmd (struct amr_command*) ;
 int debug_called (int) ;
 scalar_t__ stub1 (struct amr_command*) ;

int
amr_dump_blocks(struct amr_softc *sc, int unit, u_int32_t lba, void *data, int blks)
{
    struct amr_command *ac;
    int error = EIO;

    debug_called(1);

    sc->amr_state |= AMR_STATE_INTEN;


    if ((ac = amr_alloccmd(sc)) == ((void*)0))
 goto out;

    ac->ac_flags |= AMR_CMD_PRIORITY | AMR_CMD_DATAOUT;


    ac->ac_data = data;
    ac->ac_length = blks * AMR_BLKSIZE;


    ac->ac_mailbox.mb_command = AMR_CMD_LWRITE;
    ac->ac_mailbox.mb_blkcount = blks;
    ac->ac_mailbox.mb_lba = lba;
    ac->ac_mailbox.mb_drive = unit;


    if (sc->amr_poll_command(ac))
 goto out;
    error = ac->ac_status;

 out:
    if (ac != ((void*)0))
 amr_releasecmd(ac);

    sc->amr_state &= ~AMR_STATE_INTEN;
    return (error);
}
