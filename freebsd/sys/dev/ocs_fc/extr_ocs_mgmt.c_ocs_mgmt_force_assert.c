
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_t ;
typedef int int32_t ;


 int FALSE ;
 int ocs_assert (int ,int ) ;

__attribute__((used)) static int32_t
ocs_mgmt_force_assert(ocs_t *ocs, char *name, void *buf, uint32_t buf_len, void *arg_out, uint32_t arg_out_length)
{
 ocs_assert(FALSE, 0);
}
