
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t length; } ;
struct TYPE_11__ {TYPE_4__ ifru_buffer; } ;
struct TYPE_12__ {TYPE_5__ ifr_ifru; } ;
struct TYPE_7__ {size_t length; } ;
struct TYPE_8__ {TYPE_1__ ifru_buffer; } ;
struct TYPE_9__ {TYPE_2__ ifr_ifru; } ;
union ifreq_union {TYPE_6__ ifr; TYPE_3__ ifr32; } ;


 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_ILP32 ;

__attribute__((used)) static size_t
ifr_buffer_get_length(void *data)
{
 union ifreq_union *ifrup;

 ifrup = data;




 return (ifrup->ifr.ifr_ifru.ifru_buffer.length);
}
