
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211req {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int
dummy_ioctl_get(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 return ENOSYS;
}
