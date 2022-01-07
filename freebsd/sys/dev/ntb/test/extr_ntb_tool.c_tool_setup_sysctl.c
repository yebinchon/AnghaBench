
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_ctx {unsigned int inspad_cnt; unsigned int peer_cnt; TYPE_1__* peers; int dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int desc ;
typedef int buf ;
struct TYPE_2__ {unsigned int inmw_cnt; unsigned int outspad_cnt; struct tool_ctx* inmws; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RDTUN ;
 int CTLFLAG_RW ;
 int CTLFLAG_RWTUN ;
 int CTLFLAG_WR ;
 int CTLTYPE_STRING ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct tool_ctx*,unsigned int,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TOOL_BUF_LEN ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int sysctl_db_event_handle ;
 int sysctl_db_handle ;
 int sysctl_db_mask_handle ;
 int sysctl_db_valid_mask_handle ;
 int sysctl_link_handle ;
 int sysctl_local_port_number ;
 int sysctl_mw_handle ;
 int sysctl_mw_trans_handler ;
 int sysctl_peer_db_handle ;
 int sysctl_peer_db_mask_handle ;
 int sysctl_peer_link_event_handle ;
 int sysctl_peer_link_handle ;
 int sysctl_peer_mw_handle ;
 int sysctl_peer_port_number ;
 int sysctl_peer_spad_handle ;
 int sysctl_spad_handle ;

__attribute__((used)) static void
tool_setup_sysctl(struct tool_ctx *tc)
{
 char buf[TOOL_BUF_LEN], desc[TOOL_BUF_LEN];
 struct sysctl_oid_list *top, *peer_top;
 struct sysctl_oid *parent, *peer;
 struct sysctl_ctx_list *clist;
 unsigned int pidx, sidx, widx;

 clist = device_get_sysctl_ctx(tc->dev);
 parent = device_get_sysctl_tree(tc->dev);
 top = SYSCTL_CHILDREN(parent);

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "port", CTLTYPE_UINT |
     CTLFLAG_RDTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_local_port_number,
     "IU", "local port number");

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "link", CTLTYPE_STRING |
     CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_link_handle,
     "IU", "link info");

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "db", CTLTYPE_STRING |
     CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_db_handle,
     "A", "db info");

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "db_valid_mask", CTLTYPE_STRING |
     CTLFLAG_RD | CTLFLAG_MPSAFE, tc, 0, sysctl_db_valid_mask_handle,
     "A", "db valid mask");

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "db_mask", CTLTYPE_STRING |
     CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_db_mask_handle,
     "A", "db mask");

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "db_event", CTLTYPE_STRING |
     CTLFLAG_WR | CTLFLAG_MPSAFE, tc, 0, sysctl_db_event_handle,
     "A", "db event");

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "peer_db", CTLTYPE_STRING |
     CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_peer_db_handle,
     "A", "peer db");

 SYSCTL_ADD_PROC(clist, top, OID_AUTO, "peer_db_mask", CTLTYPE_STRING |
     CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, 0, sysctl_peer_db_mask_handle,
     "IU", "peer db mask info");

 if (tc->inspad_cnt != 0) {
  for (sidx = 0; sidx < tc->inspad_cnt; sidx++) {
   snprintf(buf, sizeof(buf), "spad%d", sidx);
   snprintf(desc, sizeof(desc), "spad%d info", sidx);

   SYSCTL_ADD_PROC(clist, top, OID_AUTO, buf,
       CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
       tc, sidx, sysctl_spad_handle, "IU", desc);
  }
 }

 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  snprintf(buf, sizeof(buf), "peer%d", pidx);

  peer = SYSCTL_ADD_NODE(clist, top, OID_AUTO, buf, CTLFLAG_RW, 0,
      buf);
  peer_top = SYSCTL_CHILDREN(peer);

  SYSCTL_ADD_PROC(clist, peer_top, OID_AUTO, "port",
      CTLTYPE_UINT | CTLFLAG_RDTUN | CTLFLAG_MPSAFE, tc, pidx,
      sysctl_peer_port_number, "IU", "peer port number");

  SYSCTL_ADD_PROC(clist, peer_top, OID_AUTO, "link",
      CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, pidx,
      sysctl_peer_link_handle, "IU", "peer_link info");

  SYSCTL_ADD_PROC(clist, peer_top, OID_AUTO, "link_event",
      CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE, tc, pidx,
      sysctl_peer_link_event_handle, "IU", "link event");

  for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++) {
   snprintf(buf, sizeof(buf), "mw_trans%d", widx);
   snprintf(desc, sizeof(desc), "mw trans%d info", widx);

   SYSCTL_ADD_PROC(clist, peer_top, OID_AUTO, buf,
       CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
       &tc->peers[pidx].inmws[widx], 0,
       sysctl_mw_trans_handler, "IU", desc);

   snprintf(buf, sizeof(buf), "mw%d", widx);
   snprintf(desc, sizeof(desc), "mw%d info", widx);

   SYSCTL_ADD_PROC(clist, peer_top, OID_AUTO, buf,
       CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
       &tc->peers[pidx].inmws[widx], 0,
       sysctl_mw_handle, "IU", desc);

   snprintf(buf, sizeof(buf), "peer_mw%d", widx);
   snprintf(desc, sizeof(desc), "peer_mw%d info", widx);

   SYSCTL_ADD_PROC(clist, peer_top, OID_AUTO, buf,
       CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
       &tc->peers[pidx].inmws[widx], 0,
       sysctl_peer_mw_handle, "IU", desc);
  }

  for (sidx = 0; sidx < tc->peers[pidx].outspad_cnt; sidx++) {
   snprintf(buf, sizeof(buf), "spad%d", sidx);
   snprintf(desc, sizeof(desc), "spad%d info", sidx);

   SYSCTL_ADD_PROC(clist, peer_top, OID_AUTO, buf,
       CTLTYPE_STRING | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
       tc, sidx, sysctl_peer_spad_handle, "IU", desc);
  }
 }
}
