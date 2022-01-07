
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct rp_port {TYPE_1__* rp_ctlp; int rp_timer; } ;
struct TYPE_2__ {int dev; } ;


 int callout_stop (int *) ;
 int device_unbusy (int ) ;
 int rphardclose (struct tty*) ;
 struct rp_port* tty_softc (struct tty*) ;

__attribute__((used)) static void
rpclose(struct tty *tp)
{
 struct rp_port *rp;

 rp = tty_softc(tp);
 callout_stop(&rp->rp_timer);
 rphardclose(tp);
 device_unbusy(rp->rp_ctlp->dev);
}
