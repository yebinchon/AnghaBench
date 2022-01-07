
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211_appie {int ie_len; int ie_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int IEEE80211_FREE (struct ieee80211_appie*,int ) ;
 scalar_t__ IEEE80211_MALLOC (int ,int ,int ) ;
 int IEEE80211_MAX_APPIE ;
 int IEEE80211_M_NOWAIT ;
 int M_80211_NODE_IE ;
 int copyin (int ,int ,int) ;

__attribute__((used)) static int
setappie(struct ieee80211_appie **aie, const struct ieee80211req *ireq)
{
 struct ieee80211_appie *app = *aie;
 struct ieee80211_appie *napp;
 int error;

 if (ireq->i_len == 0) {
  if (app != ((void*)0)) {
   *aie = ((void*)0);
   IEEE80211_FREE(app, M_80211_NODE_IE);
  }
  return 0;
 }
 if (!(2 <= ireq->i_len && ireq->i_len <= IEEE80211_MAX_APPIE))
  return EINVAL;
 napp = (struct ieee80211_appie *) IEEE80211_MALLOC(
     sizeof(struct ieee80211_appie) + ireq->i_len, M_80211_NODE_IE,
     IEEE80211_M_NOWAIT);
 if (napp == ((void*)0))
  return ENOMEM;

 error = copyin(ireq->i_data, napp->ie_data, ireq->i_len);
 if (error) {
  IEEE80211_FREE(napp, M_80211_NODE_IE);
  return error;
 }
 napp->ie_len = ireq->i_len;
 *aie = napp;
 if (app != ((void*)0))
  IEEE80211_FREE(app, M_80211_NODE_IE);
 return 0;
}
