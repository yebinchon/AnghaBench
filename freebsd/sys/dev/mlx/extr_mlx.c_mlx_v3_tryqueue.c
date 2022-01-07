
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int dummy; } ;
struct mlx_command {int * mc_mailbox; } ;


 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_V3_GET_IDBR (struct mlx_softc*) ;
 int MLX_V3_IDB_FULL ;
 int MLX_V3_PUT_IDBR (struct mlx_softc*,int) ;
 int MLX_V3_PUT_MAILBOX (struct mlx_softc*,int,int ) ;
 int debug_called (int) ;

__attribute__((used)) static int
mlx_v3_tryqueue(struct mlx_softc *sc, struct mlx_command *mc)
{
    int i;

    debug_called(2);
    MLX_IO_ASSERT_LOCKED(sc);


    if (!(MLX_V3_GET_IDBR(sc) & MLX_V3_IDB_FULL)) {

 for (i = 0; i < 13; i++)
     MLX_V3_PUT_MAILBOX(sc, i, mc->mc_mailbox[i]);


 MLX_V3_PUT_IDBR(sc, MLX_V3_IDB_FULL);
 return(1);
    }
    return(0);
}
