
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int if_clone_advanced (int ,int ,int ,int ,int ) ;
 int usbpf_clone_create ;
 int usbpf_clone_destroy ;
 int usbpf_clone_match ;
 int usbpf_cloner ;
 int usbusname ;

__attribute__((used)) static void
usbpf_init(void *arg)
{

 usbpf_cloner = if_clone_advanced(usbusname, 0, usbpf_clone_match,
     usbpf_clone_create, usbpf_clone_destroy);
}
