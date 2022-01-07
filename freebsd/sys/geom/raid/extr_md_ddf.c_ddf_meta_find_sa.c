
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddf_sa_record {int Signature; } ;
struct ddf_meta {int dummy; } ;


 int DDF_SA_SIGNATURE ;
 int GET32D (struct ddf_meta*,int ) ;
 int GETCRNUM (struct ddf_meta*) ;
 struct ddf_sa_record* GETSAPTR (struct ddf_meta*,int) ;

__attribute__((used)) static struct ddf_sa_record *
ddf_meta_find_sa(struct ddf_meta *meta, int create)
{
 struct ddf_sa_record *sa;
 int i, num;

 num = GETCRNUM(meta);
 for (i = 0; i < num; i++) {
  sa = GETSAPTR(meta, i);
  if (GET32D(meta, sa->Signature) == DDF_SA_SIGNATURE)
   return (sa);
 }
 if (create) {
  for (i = 0; i < num; i++) {
   sa = GETSAPTR(meta, i);
   if (GET32D(meta, sa->Signature) == 0xffffffff ||
       GET32D(meta, sa->Signature) == 0)
    return (sa);
  }
 }
 return (((void*)0));
}
