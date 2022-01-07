
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sdp_attr_p ;
typedef int int32_t ;
struct TYPE_3__ {int vlen; scalar_t__* value; } ;


 scalar_t__ SDP_DATA_BOOL ;

__attribute__((used)) static int32_t
hid_sdp_parse_boolean(sdp_attr_p a)
{
 if (a->vlen != 2 || a->value[0] != SDP_DATA_BOOL)
  return (-1);

 return (a->value[1]);
}
