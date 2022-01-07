
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_lap_msg {int offset62; } ;



__attribute__((used)) static inline void cm_lap_set_sl(struct cm_lap_msg *lap_msg, u8 sl)
{
 lap_msg->offset62 = (sl << 4) | (lap_msg->offset62 & 0x0F);
}
