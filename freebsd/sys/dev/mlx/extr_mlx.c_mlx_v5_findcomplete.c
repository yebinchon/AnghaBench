
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct mlx_softc {int dummy; } ;


 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_V5_GET_ODBR (struct mlx_softc*) ;
 int MLX_V5_GET_STATUS (struct mlx_softc*) ;
 int MLX_V5_GET_STATUS_IDENT (struct mlx_softc*) ;
 int MLX_V5_IDB_SACK ;
 int MLX_V5_ODB_HWMBOX_ACK ;
 int MLX_V5_ODB_HWSAVAIL ;
 int MLX_V5_PUT_IDBR (struct mlx_softc*,int ) ;
 int MLX_V5_PUT_ODBR (struct mlx_softc*,int ) ;
 int debug_called (int) ;

__attribute__((used)) static int
mlx_v5_findcomplete(struct mlx_softc *sc, u_int8_t *slot, u_int16_t *status)
{

    debug_called(2);
    MLX_IO_ASSERT_LOCKED(sc);


    if (MLX_V5_GET_ODBR(sc) & MLX_V5_ODB_HWSAVAIL) {
 *slot = MLX_V5_GET_STATUS_IDENT(sc);
 *status = MLX_V5_GET_STATUS(sc);


 MLX_V5_PUT_ODBR(sc, MLX_V5_ODB_HWMBOX_ACK);
 MLX_V5_PUT_IDBR(sc, MLX_V5_IDB_SACK);
 return(1);
    }
    return(0);
}
