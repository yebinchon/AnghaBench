
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxd_softc {int mlxd_controller; TYPE_1__* mlxd_drive; } ;
struct bio {int bio_bcount; int bio_resid; int bio_flags; int bio_error; TYPE_2__* bio_disk; } ;
struct TYPE_4__ {struct mlxd_softc* d_drv1; } ;
struct TYPE_3__ {scalar_t__ ms_state; } ;


 int BIO_ERROR ;
 int EINVAL ;
 int ENXIO ;
 int MLX_IO_LOCK (int ) ;
 int MLX_IO_UNLOCK (int ) ;
 scalar_t__ MLX_SYSD_OFFLINE ;
 int biodone (struct bio*) ;
 int debug_called (int) ;
 int mlx_submit_buf (int ,struct bio*) ;

__attribute__((used)) static void
mlxd_strategy(struct bio *bp)
{
    struct mlxd_softc *sc = bp->bio_disk->d_drv1;

    debug_called(1);


    if (sc == ((void*)0)) {
 bp->bio_error = EINVAL;
 bp->bio_flags |= BIO_ERROR;
 goto bad;
    }


    MLX_IO_LOCK(sc->mlxd_controller);
    if (sc->mlxd_drive->ms_state == MLX_SYSD_OFFLINE) {
 MLX_IO_UNLOCK(sc->mlxd_controller);
 bp->bio_error = ENXIO;
 bp->bio_flags |= BIO_ERROR;
 goto bad;
    }

    mlx_submit_buf(sc->mlxd_controller, bp);
    MLX_IO_UNLOCK(sc->mlxd_controller);
    return;

 bad:



    bp->bio_resid = bp->bio_bcount;
    biodone(bp);
    return;
}
