
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {char const* if_dname; int if_dunit; int if_xname; } ;


 int IFNAMSIZ ;
 int IF_DUNIT_NONE ;
 int snprintf (int ,int ,char*,char const*,int) ;
 int strlcpy (int ,char const*,int ) ;

void
if_initname(struct ifnet *ifp, const char *name, int unit)
{
 ifp->if_dname = name;
 ifp->if_dunit = unit;
 if (unit != IF_DUNIT_NONE)
  snprintf(ifp->if_xname, IFNAMSIZ, "%s%d", name, unit);
 else
  strlcpy(ifp->if_xname, name, IFNAMSIZ);
}
