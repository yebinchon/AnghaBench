
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_state; int mlx_buffer_dmat; int mlx_waitbufs; int mlx_bioq; } ;
struct mlx_command {int mc_length; int mc_data; int mc_dmamap; struct bio* mc_private; int mc_complete; } ;
struct bio {int bio_bcount; int bio_data; } ;


 int EINPROGRESS ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_STATE_QFROZEN ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct mlx_command*,int ) ;
 struct mlx_command* mlx_alloccmd (struct mlx_softc*) ;
 int mlx_completeio ;
 scalar_t__ mlx_getslot (struct mlx_command*) ;
 int mlx_releasecmd (struct mlx_command*) ;
 int mlx_startio_cb ;

__attribute__((used)) static void
mlx_startio(struct mlx_softc *sc)
{
    struct mlx_command *mc;
    struct bio *bp;
    int error;

    MLX_IO_ASSERT_LOCKED(sc);


    for (;;) {
 if (sc->mlx_state & MLX_STATE_QFROZEN)
     break;


 if ((bp = bioq_first(&sc->mlx_bioq)) == ((void*)0))
     break;

 if ((mc = mlx_alloccmd(sc)) == ((void*)0))
     break;

 if (mlx_getslot(mc) != 0) {
     mlx_releasecmd(mc);
     break;
 }

 bioq_remove(&sc->mlx_bioq, bp);
 sc->mlx_waitbufs--;


 mc->mc_complete = mlx_completeio;
 mc->mc_private = bp;
 mc->mc_data = bp->bio_data;
 mc->mc_length = bp->bio_bcount;


 error = bus_dmamap_load(sc->mlx_buffer_dmat, mc->mc_dmamap, mc->mc_data,
    mc->mc_length, mlx_startio_cb, mc, 0);
 if (error == EINPROGRESS) {
     sc->mlx_state |= MLX_STATE_QFROZEN;
     break;
 }
    }
}
