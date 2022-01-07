
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_ctx {int link_watchdog; int dev; } ;


 int NTBT_WATCHDOG_SPAD ;
 int callout_reset (int *,int,void (*) (void*),struct ntb_transport_ctx*) ;
 int hz ;
 int ntb_spad_write (int ,int ,int ) ;

__attribute__((used)) static void
xeon_link_watchdog_hb(void *arg)
{
 struct ntb_transport_ctx *nt;

 nt = arg;
 ntb_spad_write(nt->dev, NTBT_WATCHDOG_SPAD, 0);
 callout_reset(&nt->link_watchdog, 1 * hz, xeon_link_watchdog_hb, nt);
}
