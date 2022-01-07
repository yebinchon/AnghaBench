
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ispsoftc_t ;


 scalar_t__ IS_FC (int *) ;
 int isp_parse_async (int *,int ) ;
 int isp_parse_async_fc (int *,int ) ;

void
isp_intr_async(ispsoftc_t *isp, uint16_t event)
{

 if (IS_FC(isp))
  isp_parse_async_fc(isp, event);
 else
  isp_parse_async(isp, event);
}
