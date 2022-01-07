
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int dev_t ;


 int ENOENT ;
 int free_veriexec_dev (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ve_mutex ;
 int veriexec_dev_head ;
 int veriexec_file_dev_head ;

int
mac_veriexec_metadata_unmounted(dev_t fsid, struct thread *td)
{
    int error;




    mtx_lock(&ve_mutex);
    error = free_veriexec_dev(fsid, &veriexec_dev_head);
    if (error && error != ENOENT) {
     mtx_unlock(&ve_mutex);
     return error;
    }
    error = free_veriexec_dev(fsid, &veriexec_file_dev_head);
    mtx_unlock(&ve_mutex);
    if (error && error != ENOENT) {
     return error;
    }
    return 0;
}
