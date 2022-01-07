
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvlan {int ifv_pcp; int ifv_vid; int ifv_tag; } ;


 int EVL_MAKETAG (int ,int ,int ) ;

__attribute__((used)) static void
vlan_tag_recalculate(struct ifvlan *ifv)
{

       ifv->ifv_tag = EVL_MAKETAG(ifv->ifv_vid, ifv->ifv_pcp, 0);
}
