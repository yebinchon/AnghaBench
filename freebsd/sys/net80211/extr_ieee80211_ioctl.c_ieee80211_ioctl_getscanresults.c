
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scanreq {int space; void* sr; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211req {int i_len; int i_data; } ;


 int EFAULT ;
 int ENOMEM ;
 int IEEE80211_FREE (void*,int ) ;
 void* IEEE80211_MALLOC (int,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int M_TEMP ;
 int copyout (void*,int ,int) ;
 int get_scan_result ;
 int get_scan_space ;
 int ieee80211_scan_iterate (struct ieee80211vap*,int ,struct scanreq*) ;

__attribute__((used)) static int
ieee80211_ioctl_getscanresults(struct ieee80211vap *vap,
 struct ieee80211req *ireq)
{
 struct scanreq req;
 int error;

 if (ireq->i_len < sizeof(struct scanreq))
  return EFAULT;

 error = 0;
 req.space = 0;
 ieee80211_scan_iterate(vap, get_scan_space, &req);
 if (req.space > ireq->i_len)
  req.space = ireq->i_len;
 if (req.space > 0) {
  uint32_t space;
  void *p;

  space = req.space;

  p = IEEE80211_MALLOC(space, M_TEMP,
      IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
  if (p == ((void*)0))
   return ENOMEM;
  req.sr = p;
  ieee80211_scan_iterate(vap, get_scan_result, &req);
  ireq->i_len = space - req.space;
  error = copyout(p, ireq->i_data, ireq->i_len);
  IEEE80211_FREE(p, M_TEMP);
 } else
  ireq->i_len = 0;

 return error;
}
