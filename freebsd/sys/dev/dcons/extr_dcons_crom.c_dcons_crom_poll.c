
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* fc; } ;
struct dcons_crom_softc {TYPE_1__ fd; } ;
struct TYPE_4__ {int (* poll ) (TYPE_2__*,int,int) ;} ;


 int stub1 (TYPE_2__*,int,int) ;

__attribute__((used)) static void
dcons_crom_poll(void *p, int arg)
{
 struct dcons_crom_softc *sc = (struct dcons_crom_softc *) p;

 sc->fd.fc->poll(sc->fd.fc, -1, -1);
}
