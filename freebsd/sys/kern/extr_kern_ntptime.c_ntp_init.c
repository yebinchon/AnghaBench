
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int L_CLR (int ) ;
 scalar_t__ pps_fcount ;
 int pps_freq ;
 TYPE_1__* pps_tf ;
 int time_freq ;
 int time_offset ;

__attribute__((used)) static void
ntp_init(void)
{







 L_CLR(time_offset);
 L_CLR(time_freq);







}
