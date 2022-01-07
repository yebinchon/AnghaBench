
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bcm_uart_clkcfg {int freq; int div; } ;
struct bcm_platform {int dummy; } ;


 struct bcm_uart_clkcfg bcm_get_uart_clkcfg (struct bcm_platform*) ;

u_int
bcm_get_uart_rclk(struct bcm_platform *bp)
{
 struct bcm_uart_clkcfg cfg;

 cfg = bcm_get_uart_clkcfg(bp);
 return (cfg.freq / cfg.div);
}
