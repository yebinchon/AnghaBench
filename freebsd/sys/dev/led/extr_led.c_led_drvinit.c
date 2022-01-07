
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int MTX_DEF ;
 int callout_init_mtx (int *,int *,int ) ;
 int led_ch ;
 int led_mtx ;
 int led_sx ;
 int led_unit ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int ,int ,int *) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
led_drvinit(void *unused)
{

 led_unit = new_unrhdr(0, INT_MAX, ((void*)0));
 mtx_init(&led_mtx, "LED mtx", ((void*)0), MTX_DEF);
 sx_init(&led_sx, "LED sx");
 callout_init_mtx(&led_ch, &led_mtx, 0);
}
