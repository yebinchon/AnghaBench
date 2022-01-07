
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siosc {int io_port; int io_res; TYPE_1__* methods; int conf_lock; } ;
struct TYPE_2__ {int (* enter ) (int ,int ) ;} ;


 int mtx_lock (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
sio_conf_enter(struct siosc *sc)
{
 mtx_lock(&sc->conf_lock);
 sc->methods->enter(sc->io_res, sc->io_port);
}
