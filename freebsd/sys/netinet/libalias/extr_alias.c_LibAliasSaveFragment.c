
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int ip_id; int ip_src; } ;
struct alias_link {int dummy; } ;


 struct alias_link* AddFragmentPtrLink (struct libalias*,int ,int ) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int PKT_ALIAS_ERROR ;
 int PKT_ALIAS_OK ;
 int SetFragmentPtr (struct alias_link*,char*) ;

int
LibAliasSaveFragment(struct libalias *la, char *ptr)
{
 int iresult;
 struct alias_link *lnk;
 struct ip *pip;

 LIBALIAS_LOCK(la);
 pip = (struct ip *)ptr;
 lnk = AddFragmentPtrLink(la, pip->ip_src, pip->ip_id);
 iresult = PKT_ALIAS_ERROR;
 if (lnk != ((void*)0)) {
  SetFragmentPtr(lnk, ptr);
  iresult = PKT_ALIAS_OK;
 }
 LIBALIAS_UNLOCK(la);
 return (iresult);
}
