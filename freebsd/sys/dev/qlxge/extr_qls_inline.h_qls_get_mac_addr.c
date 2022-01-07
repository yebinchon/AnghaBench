
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * mac_addr; } ;
typedef TYPE_1__ qla_host_t ;



__attribute__((used)) static __inline uint8_t *
qls_get_mac_addr(qla_host_t *ha)
{
 return (ha->mac_addr);
}
