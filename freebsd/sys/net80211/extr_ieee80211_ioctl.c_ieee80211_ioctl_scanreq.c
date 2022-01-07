
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211_scan_req {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int IEEE80211_FREE (struct ieee80211_scan_req*,int ) ;
 struct ieee80211_scan_req* IEEE80211_MALLOC (int,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int M_TEMP ;
 int copyin (int ,struct ieee80211_scan_req*,int) ;
 int ieee80211_scanreq (struct ieee80211vap*,struct ieee80211_scan_req*) ;

__attribute__((used)) static int
ieee80211_ioctl_scanreq(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211_scan_req *sr;
 int error;

 if (ireq->i_len != sizeof(*sr))
  return EINVAL;
 sr = IEEE80211_MALLOC(sizeof(*sr), M_TEMP,
      IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
 if (sr == ((void*)0))
  return ENOMEM;
 error = copyin(ireq->i_data, sr, sizeof(*sr));
 if (error != 0)
  goto bad;
 error = ieee80211_scanreq(vap, sr);
bad:
 IEEE80211_FREE(sr, M_TEMP);
 return error;
}
