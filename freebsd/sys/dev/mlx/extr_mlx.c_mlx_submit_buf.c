
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_waitbufs; int mlx_bioq; } ;
struct bio {int dummy; } ;


 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int debug_called (int) ;
 int mlx_startio (struct mlx_softc*) ;

int
mlx_submit_buf(struct mlx_softc *sc, struct bio *bp)
{

    debug_called(1);

    MLX_IO_ASSERT_LOCKED(sc);
    bioq_insert_tail(&sc->mlx_bioq, bp);
    sc->mlx_waitbufs++;
    mlx_startio(sc);
    return(0);
}
