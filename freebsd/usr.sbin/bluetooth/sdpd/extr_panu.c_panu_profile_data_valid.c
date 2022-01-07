
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* sdp_panu_profile_p ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ psm; } ;



__attribute__((used)) static int32_t
panu_profile_data_valid(uint8_t const *data, uint32_t datalen)
{
 sdp_panu_profile_p panu = (sdp_panu_profile_p) data;

 return ((panu->psm == 0)? 0 : 1);
}
