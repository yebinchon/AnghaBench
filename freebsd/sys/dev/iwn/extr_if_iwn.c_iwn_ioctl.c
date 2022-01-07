
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ieee80211com {int dummy; } ;


 int ENOTTY ;

__attribute__((used)) static int
iwn_ioctl(struct ieee80211com *ic, u_long cmd, void *data)
{

 return (ENOTTY);
}
