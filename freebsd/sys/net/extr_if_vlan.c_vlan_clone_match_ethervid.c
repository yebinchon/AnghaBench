
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int IFNAMSIZ ;
 int if_rele (struct ifnet*) ;
 struct ifnet* ifunit_ref (char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static struct ifnet *
vlan_clone_match_ethervid(const char *name, int *vidp)
{
 char ifname[IFNAMSIZ];
 char *cp;
 struct ifnet *ifp;
 int vid;

 strlcpy(ifname, name, IFNAMSIZ);
 if ((cp = strchr(ifname, '.')) == ((void*)0))
  return (((void*)0));
 *cp = '\0';
 if ((ifp = ifunit_ref(ifname)) == ((void*)0))
  return (((void*)0));

 if (*++cp == '\0') {
  if_rele(ifp);
  return (((void*)0));
 }
 vid = 0;
 for(; *cp >= '0' && *cp <= '9'; cp++)
  vid = (vid * 10) + (*cp - '0');
 if (*cp != '\0') {
  if_rele(ifp);
  return (((void*)0));
 }
 if (vidp != ((void*)0))
  *vidp = vid;

 return (ifp);
}
