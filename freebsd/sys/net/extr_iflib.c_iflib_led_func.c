
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* if_ctx_t ;


 int CTX_LOCK (void*) ;
 int CTX_UNLOCK (void*) ;
 int IFDI_LED_FUNC (void*,int) ;

__attribute__((used)) static void
iflib_led_func(void *arg, int onoff)
{
 if_ctx_t ctx = arg;

 CTX_LOCK(ctx);
 IFDI_LED_FUNC(ctx, onoff);
 CTX_UNLOCK(ctx);
}
