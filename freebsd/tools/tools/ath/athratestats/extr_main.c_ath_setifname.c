
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int if_name; } ;
struct ath_ratestats {TYPE_1__ re; } ;


 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void
ath_setifname(struct ath_ratestats *r, const char *ifname)
{

 strncpy(r->re.if_name, ifname, sizeof (r->re.if_name));
}
