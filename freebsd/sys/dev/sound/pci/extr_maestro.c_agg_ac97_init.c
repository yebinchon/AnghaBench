
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_info {int dummy; } ;
typedef int kobj_t ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int CODEC_STAT_MASK ;
 int PORT_CODEC_STAT ;

__attribute__((used)) static u_int32_t
agg_ac97_init(kobj_t obj, void *sc)
{
 struct agg_info *ess = sc;

 return (AGG_RD(ess, PORT_CODEC_STAT, 1) & CODEC_STAT_MASK)? 0 : 1;
}
