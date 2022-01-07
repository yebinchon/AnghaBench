
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int eeval ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int ad_id; int ad_in_size; int ad_name; int * ad_out_data; scalar_t__ ad_out_size; scalar_t__ ad_in_data; } ;
struct TYPE_4__ {void* ee_data; void* ee_off; } ;
typedef TYPE_1__ HAL_DIAG_EEVAL ;


 int ATH_DIAG_IN ;
 int HAL_DIAG_EEWRITE ;
 int SIOCGATHDIAG ;
 TYPE_2__ atd ;
 int err (int,char*,int ) ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int s ;

__attribute__((used)) static void
eewrite(uint16_t off, uint16_t value)
{
 HAL_DIAG_EEVAL eeval;

 eeval.ee_off = off;
 eeval.ee_data = value;

 atd.ad_id = HAL_DIAG_EEWRITE | ATH_DIAG_IN;
 atd.ad_in_size = sizeof(eeval);
 atd.ad_in_data = (caddr_t) &eeval;
 atd.ad_out_size = 0;
 atd.ad_out_data = ((void*)0);
 if (ioctl(s, SIOCGATHDIAG, &atd) < 0)
  err(1, "ioctl: %s", atd.ad_name);
}
