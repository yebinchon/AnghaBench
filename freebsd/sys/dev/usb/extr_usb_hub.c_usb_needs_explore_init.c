
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTFN (int,char*) ;
 scalar_t__ cold ;
 int usb_needs_explore_all () ;

__attribute__((used)) static void
usb_needs_explore_init(void *arg)
{




 if (cold == 0)
  usb_needs_explore_all();
 else
  DPRINTFN(-1, "Cold variable is still set!\n");
}
