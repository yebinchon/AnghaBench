
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct ath_diag {int ad_in_size; int ad_id; int ad_name; scalar_t__ ad_in_data; } ;
typedef int rw ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {void* value; void* addr; } ;
typedef TYPE_1__ HAL_REGWRITE ;


 int ATH_DIAG_IN ;
 int HAL_DIAG_SETREGS ;
 int SIOCGATHDIAG ;
 int err (int,int ) ;
 scalar_t__ ioctl (int,int ,struct ath_diag*) ;

__attribute__((used)) static void
regwrite(int s, struct ath_diag *atd, uint32_t r, uint32_t v)
{
 HAL_REGWRITE rw;

 rw.addr = r;
 rw.value = v;
 atd->ad_in_data = (caddr_t) &rw;
 atd->ad_in_size = sizeof(rw);
 atd->ad_id = HAL_DIAG_SETREGS | ATH_DIAG_IN;
 if (ioctl(s, SIOCGATHDIAG, atd) < 0)
  err(1, atd->ad_name);
}
