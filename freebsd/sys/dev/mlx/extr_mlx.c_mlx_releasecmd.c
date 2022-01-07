
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_command {TYPE_1__* mc_sc; } ;
struct TYPE_2__ {int mlx_freecmds; } ;


 int MLX_IO_ASSERT_LOCKED (TYPE_1__*) ;
 int TAILQ_INSERT_HEAD (int *,struct mlx_command*,int ) ;
 int debug_called (int) ;
 int mc_link ;

__attribute__((used)) static void
mlx_releasecmd(struct mlx_command *mc)
{

    debug_called(1);

    MLX_IO_ASSERT_LOCKED(mc->mc_sc);
    TAILQ_INSERT_HEAD(&mc->mc_sc->mlx_freecmds, mc, mc_link);
}
