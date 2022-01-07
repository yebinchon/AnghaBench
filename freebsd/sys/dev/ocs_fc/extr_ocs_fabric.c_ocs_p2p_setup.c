
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ external_loopback; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_8__ {int p2p_remote_port_id; int p2p_port_id; void* p2p_winner; TYPE_1__* ocs; } ;
typedef TYPE_2__ ocs_sport_t ;
typedef int int32_t ;


 void* FALSE ;
 void* TRUE ;
 int ocs_log_debug (TYPE_1__*,char*) ;
 int ocs_log_warn (TYPE_1__*,char*) ;
 int ocs_rnode_is_winner (TYPE_2__*) ;

int32_t
ocs_p2p_setup(ocs_sport_t *sport)
{
 ocs_t *ocs = sport->ocs;
 int32_t rnode_winner;
 rnode_winner = ocs_rnode_is_winner(sport);


 if (rnode_winner == 1) {
  sport->p2p_remote_port_id = 0;
  sport->p2p_port_id = 0;
  sport->p2p_winner = FALSE;
 } else if (rnode_winner == 0) {
  sport->p2p_remote_port_id = 2;
  sport->p2p_port_id = 1;
  sport->p2p_winner = TRUE;
 } else {

  if (sport->ocs->external_loopback) {




   ocs_log_debug(ocs, "External loopback mode enabled\n");
   sport->p2p_remote_port_id = 1;
   sport->p2p_port_id = 1;
   sport->p2p_winner = TRUE;
  } else {
   ocs_log_warn(ocs, "failed to determine p2p winner\n");
   return rnode_winner;
  }
 }
 return 0;
}
