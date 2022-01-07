
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_mcast_filter_cmd {int filter_own; int pass_all; int bssid; scalar_t__ count; scalar_t__ port_id; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211_node {int ni_bssid; } ;


 int ENOMEM ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IWM_CMD_SYNC ;
 int IWM_MCAST_FILTER_CMD ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (struct iwm_mcast_filter_cmd*,int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,size_t,struct iwm_mcast_filter_cmd*) ;
 struct iwm_mcast_filter_cmd* malloc (size_t,int ,int) ;
 size_t roundup (int,int) ;

__attribute__((used)) static int
iwm_allow_mcast(struct ieee80211vap *vap, struct iwm_softc *sc)
{
 struct ieee80211_node *ni = vap->iv_bss;
 struct iwm_mcast_filter_cmd *cmd;
 size_t size;
 int error;

 size = roundup(sizeof(*cmd), 4);
 cmd = malloc(size, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (cmd == ((void*)0))
  return ENOMEM;
 cmd->filter_own = 1;
 cmd->port_id = 0;
 cmd->count = 0;
 cmd->pass_all = 1;
 IEEE80211_ADDR_COPY(cmd->bssid, ni->ni_bssid);

 error = iwm_mvm_send_cmd_pdu(sc, IWM_MCAST_FILTER_CMD,
     IWM_CMD_SYNC, size, cmd);
 free(cmd, M_DEVBUF);

 return (error);
}
