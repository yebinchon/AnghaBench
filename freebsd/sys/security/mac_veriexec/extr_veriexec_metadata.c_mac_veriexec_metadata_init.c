
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int ve_mutex ;
 int veriexec_dev_head ;
 int veriexec_file_dev_head ;

void
mac_veriexec_metadata_init(void)
{

 mtx_init(&ve_mutex, "veriexec lock", ((void*)0), MTX_DEF);
 LIST_INIT(&veriexec_dev_head);
 LIST_INIT(&veriexec_file_dev_head);
}
