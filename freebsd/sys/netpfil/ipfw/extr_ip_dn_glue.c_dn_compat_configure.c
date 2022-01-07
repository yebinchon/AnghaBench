
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_sch {int dummy; } ;
struct dn_profile {int dummy; } ;
struct dn_pipe8 {scalar_t__ samples_no; } ;
struct dn_pipe7 {int pipe_nr; } ;
struct dn_link {int dummy; } ;
struct dn_id {int id; } ;
struct dn_fs {int dummy; } ;


 int DN_API_VERSION ;
 int DN_CMD_CONFIG ;
 int DN_FS ;
 int DN_LINK ;
 int DN_PROFILE ;
 int DN_SCH ;
 int M_DUMMYNET ;
 int M_WAITOK ;
 int M_ZERO ;
 int dn_compat_config_pipe (struct dn_sch*,struct dn_link*,struct dn_fs*,void*) ;
 int dn_compat_config_profile (struct dn_profile*,struct dn_link*,void*) ;
 int dn_compat_config_queue (struct dn_fs*,void*) ;
 int do_config (struct dn_id*,int) ;
 int free (struct dn_id*,int ) ;
 int is7 ;
 struct dn_id* malloc (int,int ,int) ;
 void* o_next (struct dn_id**,int,int ) ;

__attribute__((used)) static int
dn_compat_configure(void *v)
{
 struct dn_id *buf = ((void*)0), *base;
 struct dn_sch *sch = ((void*)0);
 struct dn_link *p = ((void*)0);
 struct dn_fs *fs = ((void*)0);
 struct dn_profile *pf = ((void*)0);
 int lmax;
 int error;

 struct dn_pipe7 *p7 = (struct dn_pipe7 *)v;
 struct dn_pipe8 *p8 = (struct dn_pipe8 *)v;

 int i;

 lmax = sizeof(struct dn_id);
 lmax += sizeof(struct dn_sch) + sizeof(struct dn_link) +
  sizeof(struct dn_fs) + sizeof(struct dn_profile);

 base = buf = malloc(lmax, M_DUMMYNET, M_WAITOK|M_ZERO);
 o_next(&buf, sizeof(struct dn_id), DN_CMD_CONFIG);
 base->id = DN_API_VERSION;


 i = p7->pipe_nr;
 if (i != 0) {
  sch = o_next(&buf, sizeof(*sch), DN_SCH);
  p = o_next(&buf, sizeof(*p), DN_LINK);
  fs = o_next(&buf, sizeof(*fs), DN_FS);

  error = dn_compat_config_pipe(sch, p, fs, v);
  if (error) {
   free(buf, M_DUMMYNET);
   return error;
  }
  if (!is7 && p8->samples_no > 0) {

   pf = o_next(&buf, sizeof(*pf), DN_PROFILE);
   error = dn_compat_config_profile(pf, p, v);
   if (error) {
    free(buf, M_DUMMYNET);
    return error;
   }
  }
 } else {
  fs = o_next(&buf, sizeof(*fs), DN_FS);
  error = dn_compat_config_queue(fs, v);
  if (error) {
   free(buf, M_DUMMYNET);
   return error;
  }
 }
 error = do_config(base, (char *)buf - (char *)base);

 if (buf)
  free(buf, M_DUMMYNET);
 return error;
}
