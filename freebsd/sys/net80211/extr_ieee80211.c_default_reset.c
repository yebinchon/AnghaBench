
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ieee80211vap {int dummy; } ;


 int ENETRESET ;

__attribute__((used)) static int
default_reset(struct ieee80211vap *vap, u_long cmd)
{
 return ENETRESET;
}
