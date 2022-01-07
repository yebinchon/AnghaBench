
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifr_name; } ;
struct mwlstatfoo_p {TYPE_1__ ifr; } ;
struct mwlstatfoo {int dummy; } ;


 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void
mwl_setifname(struct mwlstatfoo *wf0, const char *ifname)
{
 struct mwlstatfoo_p *wf = (struct mwlstatfoo_p *) wf0;

 strncpy(wf->ifr.ifr_name, ifname, sizeof (wf->ifr.ifr_name));
}
