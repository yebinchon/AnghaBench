
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veriexec_devhead {int dummy; } ;
struct veriexec_dev_list {scalar_t__ fsid; struct veriexec_dev_list* label; struct veriexec_devhead file_head; } ;
struct mac_veriexec_file_info {scalar_t__ fsid; struct mac_veriexec_file_info* label; struct veriexec_devhead file_head; } ;
typedef scalar_t__ dev_t ;


 int ENOENT ;
 struct veriexec_dev_list* LIST_FIRST (struct veriexec_devhead*) ;
 struct veriexec_dev_list* LIST_NEXT (struct veriexec_dev_list*,int ) ;
 int LIST_REMOVE (struct veriexec_dev_list*,int ) ;
 int M_VERIEXEC ;
 int entries ;
 int free (struct veriexec_dev_list*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ve_mutex ;

__attribute__((used)) static int
free_veriexec_dev(dev_t fsid, struct veriexec_devhead *head)
{
 struct veriexec_dev_list *lp;
 struct mac_veriexec_file_info *ip, *nip;


 for (lp = LIST_FIRST(head); lp != ((void*)0);
      lp = LIST_NEXT(lp, entries))
  if (lp->fsid == fsid) break;


 if (lp == ((void*)0))
  return ENOENT;


 LIST_REMOVE(lp, entries);


 mtx_unlock(&ve_mutex);


 for (ip = LIST_FIRST(&(lp->file_head)); ip != ((void*)0); ip = nip) {
  nip = LIST_NEXT(ip, entries);
  LIST_REMOVE(ip, entries);
  if (ip->label)
   free(ip->label, M_VERIEXEC);
  free(ip, M_VERIEXEC);
 }


 free(lp, M_VERIEXEC);


 mtx_lock(&ve_mutex);
 return 0;
}
