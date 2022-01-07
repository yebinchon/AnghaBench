
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v ;
typedef int uint32_t ;
struct ath_diag {int ad_in_size; int ad_out_size; int ad_id; int ad_name; void* ad_out_data; void* ad_in_data; } ;
typedef int ra ;
typedef void* caddr_t ;
struct TYPE_2__ {scalar_t__ end; int start; } ;
typedef TYPE_1__ HAL_REGRANGE ;


 int ATH_DIAG_DYN ;
 int ATH_DIAG_IN ;
 int HAL_DIAG_REGS ;
 int SIOCGATHDIAG ;
 int err (int,int ) ;
 scalar_t__ ioctl (int,int ,struct ath_diag*) ;

__attribute__((used)) static uint32_t
regread(int s, struct ath_diag *atd, uint32_t r)
{
 HAL_REGRANGE ra;
 uint32_t v[3];

 ra.start = r;
 ra.end = 0;

 atd->ad_in_data = (caddr_t) &ra;
 atd->ad_in_size = sizeof(ra);
 atd->ad_out_data = (caddr_t) v;
 atd->ad_out_size = sizeof(v);
 atd->ad_id = HAL_DIAG_REGS | ATH_DIAG_IN | ATH_DIAG_DYN;
 if (ioctl(s, SIOCGATHDIAG, atd) < 0)
  err(1, atd->ad_name);
 return v[2];
}
