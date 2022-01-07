
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int dummy; } ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int CODEC_STAT_MASK ;
 int DELAY (int) ;
 int EBUSY ;
 int PORT_CODEC_STAT ;

__attribute__((used)) static int
agg_codec_wait4idle(struct agg_info *ess)
{
 unsigned t = 26;

 while (AGG_RD(ess, PORT_CODEC_STAT, 1) & CODEC_STAT_MASK) {
  if (--t == 0)
   return EBUSY;
  DELAY(2);
 }
 return 0;
}
