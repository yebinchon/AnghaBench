
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct amrd_softc {int amrd_dev; } ;
struct amr_command {scalar_t__ ac_status; TYPE_1__* ac_sc; TYPE_3__* ac_bio; } ;
struct TYPE_6__ {int bio_flags; int bio_error; TYPE_2__* bio_disk; } ;
struct TYPE_5__ {struct amrd_softc* d_drv1; } ;
struct TYPE_4__ {int amr_list_lock; } ;


 scalar_t__ AMR_STATUS_SUCCESS ;
 int BIO_ERROR ;
 int EIO ;
 int amr_releasecmd (struct amr_command*) ;
 int amrd_intr (TYPE_3__*) ;
 int device_printf (int ,char*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ ppsratecheck (struct timeval*,int*,int) ;

__attribute__((used)) static void
amr_completeio(struct amr_command *ac)
{
    struct amrd_softc *sc = ac->ac_bio->bio_disk->d_drv1;
    static struct timeval lastfail;
    static int curfail;

    if (ac->ac_status != AMR_STATUS_SUCCESS) {
 ac->ac_bio->bio_error = EIO;
 ac->ac_bio->bio_flags |= BIO_ERROR;

 if (ppsratecheck(&lastfail, &curfail, 1))
     device_printf(sc->amrd_dev, "I/O error - 0x%x\n", ac->ac_status);

    }
    amrd_intr(ac->ac_bio);
    mtx_lock(&ac->ac_sc->amr_list_lock);
    amr_releasecmd(ac);
    mtx_unlock(&ac->ac_sc->amr_list_lock);
}
