
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {unsigned char link_status; scalar_t__ link_bits; scalar_t__ db_event_val; scalar_t__ peer_db_mask_val; scalar_t__ peer_db_val; scalar_t__ db_mask_val; int db_event_timer; int link_event_timer; } ;


 int callout_init (int *,int) ;

__attribute__((used)) static int
tool_check_ntb(struct tool_ctx *tc)
{


 callout_init(&tc->link_event_timer, 1);


 callout_init(&tc->db_event_timer, 1);


 tc->link_status = 'U';
 tc->db_mask_val = 0;
 tc->peer_db_val = 0;
 tc->peer_db_mask_val = 0;
 tc->db_event_val = 0;
 tc->link_bits = 0;

 return (0);
}
