
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
typedef int off ;
typedef int eedata ;
typedef void* caddr_t ;
struct TYPE_3__ {int ad_id; int ad_in_size; int ad_out_size; int ad_name; void* ad_out_data; void* ad_in_data; } ;


 int ATH_DIAG_DYN ;
 int ATH_DIAG_IN ;
 int HAL_DIAG_EEREAD ;
 int SIOCGATHDIAG ;
 TYPE_1__ atd ;
 int err (int,char*,int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int s ;

__attribute__((used)) static u_int16_t
eeread(u_int16_t off)
{
 u_int16_t eedata;

 atd.ad_id = HAL_DIAG_EEREAD | ATH_DIAG_IN | ATH_DIAG_DYN;
 atd.ad_in_size = sizeof(off);
 atd.ad_in_data = (caddr_t) &off;
 atd.ad_out_size = sizeof(eedata);
 atd.ad_out_data = (caddr_t) &eedata;
 if (ioctl(s, SIOCGATHDIAG, &atd) < 0)
  err(1, "ioctl: %s", atd.ad_name);
 return eedata;
}
