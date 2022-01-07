
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_mem; } ;
struct mlx_command {int * mc_mailbox; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_V4_GET_IDBR (struct mlx_softc*) ;
 int MLX_V4_IDB_FULL ;
 int MLX_V4_IDB_HWMBOX_CMD ;
 int MLX_V4_MAILBOX ;
 int MLX_V4_MAILBOX_LENGTH ;
 int MLX_V4_PUT_IDBR (struct mlx_softc*,int ) ;
 int MLX_V4_PUT_MAILBOX (struct mlx_softc*,int,int ) ;
 int bus_barrier (int ,int ,int ,int ) ;
 int debug_called (int) ;

__attribute__((used)) static int
mlx_v4_tryqueue(struct mlx_softc *sc, struct mlx_command *mc)
{
    int i;

    debug_called(2);
    MLX_IO_ASSERT_LOCKED(sc);


    if (!(MLX_V4_GET_IDBR(sc) & MLX_V4_IDB_FULL)) {

 for (i = 0; i < 13; i++)
     MLX_V4_PUT_MAILBOX(sc, i, mc->mc_mailbox[i]);


 bus_barrier(sc->mlx_mem, MLX_V4_MAILBOX, MLX_V4_MAILBOX_LENGTH,
     BUS_SPACE_BARRIER_WRITE);


 MLX_V4_PUT_IDBR(sc, MLX_V4_IDB_HWMBOX_CMD);
 return(1);
    }
    return(0);
}
