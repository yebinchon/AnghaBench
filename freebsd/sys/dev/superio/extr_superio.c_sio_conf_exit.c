
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siosc {int conf_lock; int io_port; int io_res; TYPE_1__* methods; } ;
struct TYPE_2__ {int (* exit ) (int ,int ) ;} ;


 int mtx_unlock (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
sio_conf_exit(struct siosc *sc)
{
 sc->methods->exit(sc->io_res, sc->io_port);
 mtx_unlock(&sc->conf_lock);
}
