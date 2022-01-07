
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veriexec_devhead {int dummy; } ;
struct sbuf {int dummy; } ;
typedef int fpdbs ;


 int mac_veriexec_print_db_head (struct sbuf*,struct veriexec_devhead*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sbuf_printf (struct sbuf*,char*,char const*) ;
 int ve_mutex ;
 int veriexec_dev_head ;
 int veriexec_file_dev_head ;

void
mac_veriexec_metadata_print_db(struct sbuf *sbp)
{
 struct {
  struct veriexec_devhead *h;
  const char *name;
 } fpdbs[] = {
  { &veriexec_file_dev_head, "regular files" },
  { &veriexec_dev_head, "executable files" },
 };
 int i;

 mtx_lock(&ve_mutex);
 for (i = 0; i < sizeof(fpdbs)/sizeof(fpdbs[0]); i++) {
  sbuf_printf(sbp, "%s fingerprint db:\n", fpdbs[i].name);
  mac_veriexec_print_db_head(sbp, fpdbs[i].h);
 }
 mtx_unlock(&ve_mutex);
}
