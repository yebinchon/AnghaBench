
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int * common_service_parameters; } ;
typedef TYPE_1__ fc_plogi_payload_t ;


 unsigned int ocs_be32toh (int ) ;

int32_t
ocs_rnode_is_nport(fc_plogi_payload_t *remote_sparms)
{
 return (ocs_be32toh(remote_sparms->common_service_parameters[1]) & (1U << 28)) == 0;
}
