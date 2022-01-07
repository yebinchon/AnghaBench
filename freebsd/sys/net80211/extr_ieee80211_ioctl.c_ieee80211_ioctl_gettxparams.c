
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_txparms; } ;
struct ieee80211req {size_t i_len; int i_data; } ;


 int copyout (int ,int ,size_t) ;

__attribute__((used)) static int
ieee80211_ioctl_gettxparams(struct ieee80211vap *vap,
 const struct ieee80211req *ireq)
{
 size_t len = ireq->i_len;

 if (len > sizeof(vap->iv_txparms))
  len = sizeof(vap->iv_txparms);
 return copyout(vap->iv_txparms, ireq->i_data, len);
}
