
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct veriexec_devhead {int dummy; } ;
struct veriexec_dev_list {scalar_t__ fsid; } ;
struct sbuf {int dummy; } ;


 struct veriexec_dev_list* LIST_FIRST (struct veriexec_devhead*) ;
 struct veriexec_dev_list* LIST_NEXT (struct veriexec_dev_list*,int ) ;
 int entries ;
 int mac_veriexec_print_db_dev_list (struct sbuf*,struct veriexec_dev_list*) ;
 int sbuf_printf (struct sbuf*,char*,int ) ;

__attribute__((used)) static void
mac_veriexec_print_db_head(struct sbuf *sbp, struct veriexec_devhead *head)
{
 struct veriexec_dev_list *lp;

 for (lp = LIST_FIRST(head); lp != ((void*)0); lp = LIST_NEXT(lp, entries)) {
  sbuf_printf(sbp, " FS id: %ju\n", (uintmax_t)lp->fsid);
  mac_veriexec_print_db_dev_list(sbp, lp);
 }

}
