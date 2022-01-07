
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
send_inval(struct ieee80211_node *ni, int cat, int act, void *sa)
{
 return EINVAL;
}
