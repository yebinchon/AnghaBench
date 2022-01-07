
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct stainforeq {size_t space; void* si; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211req {size_t i_len; scalar_t__ i_data; } ;
struct ieee80211com {int ic_sta; } ;
struct ieee80211_node {int dummy; } ;


 int ENOMEM ;
 int IEEE80211_FREE (void*,int ) ;
 void* IEEE80211_MALLOC (size_t,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int M_TEMP ;
 int copyout (void*,int *,size_t) ;
 int get_sta_info (struct stainforeq*,struct ieee80211_node*) ;
 int get_sta_space (struct stainforeq*,struct ieee80211_node*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_iterate_nodes_vap (int *,struct ieee80211vap*,int (*) (struct stainforeq*,struct ieee80211_node*),struct stainforeq*) ;

__attribute__((used)) static int
getstainfo_common(struct ieee80211vap *vap, struct ieee80211req *ireq,
 struct ieee80211_node *ni, size_t off)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct stainforeq req;
 size_t space;
 void *p;
 int error;

 error = 0;
 req.space = 0;
 if (ni == ((void*)0)) {
  ieee80211_iterate_nodes_vap(&ic->ic_sta, vap, get_sta_space,
      &req);
 } else
  get_sta_space(&req, ni);
 if (req.space > ireq->i_len)
  req.space = ireq->i_len;
 if (req.space > 0) {
  space = req.space;

  p = IEEE80211_MALLOC(space, M_TEMP,
      IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
  if (p == ((void*)0)) {
   error = ENOMEM;
   goto bad;
  }
  req.si = p;
  if (ni == ((void*)0)) {
   ieee80211_iterate_nodes_vap(&ic->ic_sta, vap,
       get_sta_info, &req);
  } else
   get_sta_info(&req, ni);
  ireq->i_len = space - req.space;
  error = copyout(p, (uint8_t *) ireq->i_data+off, ireq->i_len);
  IEEE80211_FREE(p, M_TEMP);
 } else
  ireq->i_len = 0;
bad:
 if (ni != ((void*)0))
  ieee80211_free_node(ni);
 return error;
}
