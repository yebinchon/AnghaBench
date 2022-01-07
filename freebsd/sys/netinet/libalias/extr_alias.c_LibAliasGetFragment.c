
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct ip {int ip_id; int ip_src; } ;
struct alias_link {int dummy; } ;


 struct alias_link* FindFragmentPtr (struct libalias*,int ,int ) ;
 int GetFragmentPtr (struct alias_link*,char**) ;
 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 int SetExpire (struct alias_link*,int ) ;
 int SetFragmentPtr (struct alias_link*,int *) ;

char *
LibAliasGetFragment(struct libalias *la, char *ptr)
{
 struct alias_link *lnk;
 char *fptr;
 struct ip *pip;

 LIBALIAS_LOCK(la);
 pip = (struct ip *)ptr;
 lnk = FindFragmentPtr(la, pip->ip_src, pip->ip_id);
 if (lnk != ((void*)0)) {
  GetFragmentPtr(lnk, &fptr);
  SetFragmentPtr(lnk, ((void*)0));
  SetExpire(lnk, 0);
 } else
  fptr = ((void*)0);

 LIBALIAS_UNLOCK(la);
 return (fptr);
}
