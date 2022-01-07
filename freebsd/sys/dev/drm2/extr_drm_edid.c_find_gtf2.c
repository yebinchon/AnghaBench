
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct detailed_timing {int dummy; } ;


 int EDID_DETAIL_MONITOR_RANGE ;

__attribute__((used)) static void
find_gtf2(struct detailed_timing *t, void *data)
{
 u8 *r = (u8 *)t;
 if (r[3] == EDID_DETAIL_MONITOR_RANGE && r[10] == 0x02)
  *(u8 **)data = r;
}
