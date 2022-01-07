
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int ispsoftc_t ;
struct TYPE_3__ {int rqs_entry_type; int rqs_entry_count; } ;
typedef TYPE_1__ isphdr_t ;


 int ISP_IOXGET_8 (int *,int *,scalar_t__) ;
 scalar_t__ ISP_IS_SBUS (int *) ;

int
isp_get_response_type(ispsoftc_t *isp, isphdr_t *hp)
{
 uint8_t type;
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXGET_8(isp, &hp->rqs_entry_count, type);
 } else {
  ISP_IOXGET_8(isp, &hp->rqs_entry_type, type);
 }
 return ((int)type);
}
