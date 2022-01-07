
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_work; } ;
struct mlx_command {scalar_t__ mc_status; int * mc_private; int (* mc_complete ) (struct mlx_command*) ;} ;


 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 scalar_t__ MLX_STATUS_BUSY ;
 struct mlx_command* TAILQ_FIRST (int *) ;
 struct mlx_command* TAILQ_NEXT (struct mlx_command*,int ) ;
 int TAILQ_REMOVE (int *,struct mlx_command*,int ) ;
 int debug_called (int) ;
 int mc_link ;
 int mlx_unmapcmd (struct mlx_command*) ;
 int stub1 (struct mlx_command*) ;
 int wakeup_one (int *) ;

__attribute__((used)) static void
mlx_complete(struct mlx_softc *sc)
{
    struct mlx_command *mc, *nc;

    debug_called(2);
    MLX_IO_ASSERT_LOCKED(sc);


    mc = TAILQ_FIRST(&sc->mlx_work);
    while (mc != ((void*)0)) {
 nc = TAILQ_NEXT(mc, mc_link);


 if (mc->mc_status != MLX_STATUS_BUSY) {


     mlx_unmapcmd(mc);



     if (mc->mc_complete != ((void*)0)) {

  TAILQ_REMOVE(&sc->mlx_work, mc, mc_link);
  mc->mc_complete(mc);




     } else if (mc->mc_private != ((void*)0)) {


  TAILQ_REMOVE(&sc->mlx_work, mc, mc_link);
  wakeup_one(mc->mc_private);




     } else {
     }
 }
 mc = nc;
    }
}
