
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tentry_info {scalar_t__ subtype; } ;
struct ta_buf_fhash {struct fhashentry* ent_ptr; } ;
struct ip_fw_chain {int dummy; } ;
struct fhashentry6 {int dummy; } ;
struct fhashentry4 {int dummy; } ;
struct fhashentry {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int M_IPFW_TBL ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct fhashentry*,int ) ;
 struct fhashentry* malloc (size_t,int ,int) ;
 int tei_to_fhash_ent (struct tentry_info*,struct fhashentry*) ;

__attribute__((used)) static int
ta_prepare_add_fhash(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_fhash *tb;
 struct fhashentry *ent;
 size_t sz;
 int error;

 tb = (struct ta_buf_fhash *)ta_buf;

 if (tei->subtype == AF_INET)
  sz = sizeof(struct fhashentry4);
 else if (tei->subtype == AF_INET6)
  sz = sizeof(struct fhashentry6);
 else
  return (EINVAL);

 ent = malloc(sz, M_IPFW_TBL, M_WAITOK | M_ZERO);

 error = tei_to_fhash_ent(tei, ent);
 if (error != 0) {
  free(ent, M_IPFW_TBL);
  return (error);
 }
 tb->ent_ptr = ent;

 return (0);
}
