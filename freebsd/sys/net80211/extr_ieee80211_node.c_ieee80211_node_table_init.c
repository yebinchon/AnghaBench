
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_name; } ;
struct ieee80211_node_table {char const* nt_name; int nt_inact_init; int nt_keyixmax; struct ieee80211_node** nt_keyixmap; scalar_t__ nt_count; int nt_node; struct ieee80211com* nt_ic; } ;
struct ieee80211_node {int dummy; } ;


 scalar_t__ IEEE80211_MALLOC (int,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int IEEE80211_NODE_LOCK_INIT (struct ieee80211_node_table*,int ) ;
 int M_80211_NODE ;
 int TAILQ_INIT (int *) ;
 int ic_printf (struct ieee80211com*,char*,int) ;

__attribute__((used)) static void
ieee80211_node_table_init(struct ieee80211com *ic,
 struct ieee80211_node_table *nt,
 const char *name, int inact, int keyixmax)
{

 nt->nt_ic = ic;
 IEEE80211_NODE_LOCK_INIT(nt, ic->ic_name);
 TAILQ_INIT(&nt->nt_node);
 nt->nt_count = 0;
 nt->nt_name = name;
 nt->nt_inact_init = inact;
 nt->nt_keyixmax = keyixmax;
 if (nt->nt_keyixmax > 0) {
  nt->nt_keyixmap = (struct ieee80211_node **) IEEE80211_MALLOC(
   keyixmax * sizeof(struct ieee80211_node *),
   M_80211_NODE,
   IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
  if (nt->nt_keyixmap == ((void*)0))
   ic_printf(ic,
       "Cannot allocate key index map with %u entries\n",
       keyixmax);
 } else
  nt->nt_keyixmap = ((void*)0);
}
