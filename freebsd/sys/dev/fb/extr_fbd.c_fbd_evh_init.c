
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int register_fb_wrap ;
 int register_framebuffer ;
 int unregister_fb_wrap ;
 int unregister_framebuffer ;

__attribute__((used)) static void
fbd_evh_init(void *ctx)
{

 EVENTHANDLER_REGISTER(register_framebuffer, register_fb_wrap, ((void*)0),
     EVENTHANDLER_PRI_ANY);
 EVENTHANDLER_REGISTER(unregister_framebuffer, unregister_fb_wrap, ((void*)0),
     EVENTHANDLER_PRI_ANY);
}
