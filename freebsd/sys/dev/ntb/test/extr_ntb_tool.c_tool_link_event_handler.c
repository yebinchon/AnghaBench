
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tool_ctx {int link_mask; int link_bits; int link_event_timer; int dev; } ;


 int callout_reset (int *,int,void (*) (void*),struct tool_ctx*) ;
 int device_printf (int ,char*,int) ;
 int ntb_link_is_up (int ,int *,int *) ;

__attribute__((used)) static void
tool_link_event_handler(void *arg)
{
 struct tool_ctx *tc = (struct tool_ctx *)arg;
 uint64_t val;

 val = ntb_link_is_up(tc->dev, ((void*)0), ((void*)0)) & tc->link_mask;

 if (val == tc->link_bits) {
  device_printf(tc->dev, "link_event successful for link val="
      "0x%jx\n", tc->link_bits);
  tc->link_bits = 0x0;
  tc->link_mask = 0x0;
 } else
  callout_reset(&tc->link_event_timer, 1, tool_link_event_handler, tc);
}
