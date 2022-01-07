
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_state; } ;




 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_STATE_INTEN ;
 int MLX_V4_IER_DISINT ;
 int MLX_V4_IER_MASK ;
 int MLX_V4_PUT_IER (struct mlx_softc*,int) ;
 int debug_called (int) ;

__attribute__((used)) static void
mlx_v4_intaction(struct mlx_softc *sc, int action)
{
    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);

    switch(action) {
    case 129:
 MLX_V4_PUT_IER(sc, MLX_V4_IER_MASK | MLX_V4_IER_DISINT);
 sc->mlx_state &= ~MLX_STATE_INTEN;
 break;
    case 128:
 MLX_V4_PUT_IER(sc, MLX_V4_IER_MASK & ~MLX_V4_IER_DISINT);
 sc->mlx_state |= MLX_STATE_INTEN;
 break;
    }
}
