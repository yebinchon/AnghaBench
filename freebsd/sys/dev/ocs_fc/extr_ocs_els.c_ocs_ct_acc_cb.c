
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_remote_node_t ;
typedef int ocs_io_t ;
typedef int ocs_hw_io_t ;
typedef int int32_t ;


 int ocs_els_io_free (int *) ;

__attribute__((used)) static int32_t
ocs_ct_acc_cb(ocs_hw_io_t *hio, ocs_remote_node_t *rnode, uint32_t length, int32_t status, uint32_t ext_status, void *arg)
{
 ocs_io_t *io = arg;

 ocs_els_io_free(io);

 return 0;
}
