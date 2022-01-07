
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mlx_softc {int dummy; } ;


 int DELAY (int) ;
 int MLX_V4_FWERROR_PEND ;
 int MLX_V4_GET_FWERROR (struct mlx_softc*) ;
 int MLX_V4_GET_FWERROR_PARAM1 (struct mlx_softc*) ;
 int MLX_V4_GET_FWERROR_PARAM2 (struct mlx_softc*) ;
 int MLX_V4_GET_IDBR (struct mlx_softc*) ;
 int MLX_V4_IDB_INIT_BUSY ;
 int MLX_V4_IDB_SACK ;
 int MLX_V4_PUT_FWERROR (struct mlx_softc*,int ) ;
 int MLX_V4_PUT_IDBR (struct mlx_softc*,int ) ;
 int debug_called (int) ;

__attribute__((used)) static int
mlx_v4_fw_handshake(struct mlx_softc *sc, int *error, int *param1, int *param2,
    int first)
{
    u_int8_t fwerror;

    debug_called(2);


    if (first) {
 MLX_V4_PUT_IDBR(sc, MLX_V4_IDB_SACK);
 DELAY(1000);
    }


    if (!(MLX_V4_GET_IDBR(sc) & MLX_V4_IDB_INIT_BUSY))
 return(0);


    fwerror = MLX_V4_GET_FWERROR(sc);
    if (!(fwerror & MLX_V4_FWERROR_PEND))
 return(1);


    *error = fwerror & ~MLX_V4_FWERROR_PEND;
    *param1 = MLX_V4_GET_FWERROR_PARAM1(sc);
    *param2 = MLX_V4_GET_FWERROR_PARAM2(sc);


    MLX_V4_PUT_FWERROR(sc, 0);

    return(2);
}
