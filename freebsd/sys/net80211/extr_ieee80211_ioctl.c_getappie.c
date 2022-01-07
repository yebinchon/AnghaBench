
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req {scalar_t__ i_len; int i_data; } ;
struct ieee80211_appie {scalar_t__ ie_len; int ie_data; } ;


 int EINVAL ;
 int copyout (int ,int ,scalar_t__) ;

__attribute__((used)) static int
getappie(const struct ieee80211_appie *aie, struct ieee80211req *ireq)
{
 if (aie == ((void*)0))
  return EINVAL;

 if (ireq->i_len > aie->ie_len)
  ireq->i_len = aie->ie_len;
 return copyout(aie->ie_data, ireq->i_data, ireq->i_len);
}
