
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {char link_status; int dev; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;


 int device_printf (int ,char*,char*,int,int) ;
 int ntb_link_is_up (int ,int*,int*) ;

__attribute__((used)) static void
tool_link_event(void *ctx)
{
 struct tool_ctx *tc = ctx;
 enum ntb_speed speed = 0;
 enum ntb_width width = 0;
 int up = 0;

 up = ntb_link_is_up(tc->dev, &speed, &width);
 if (up)
  tc->link_status = 'Y';
 else
  tc->link_status = 'N';

 device_printf(tc->dev, "link is %s speed %d width %d\n",
     up ? "up" : "down", speed, width);
}
