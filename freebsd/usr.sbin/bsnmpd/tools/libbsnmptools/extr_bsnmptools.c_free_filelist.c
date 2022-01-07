
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int filelist; } ;
struct fname {struct fname* name; } ;


 struct fname* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct fname*) ;
 int link ;

void
free_filelist(struct snmp_toolinfo *snmptoolctx)
{
 struct fname *f;

 if (snmptoolctx == ((void*)0))
  return;

 while ((f = SLIST_FIRST(&snmptoolctx->filelist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&snmptoolctx->filelist, link);
  if (f->name)
   free(f->name);
  free(f);
 }
}
