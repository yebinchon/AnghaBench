
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int db_event_timer; int link_event_timer; } ;


 int callout_drain (int *) ;

__attribute__((used)) static void
tool_clear_data(struct tool_ctx *tc)
{

 callout_drain(&tc->link_event_timer);
 callout_drain(&tc->db_event_timer);
}
