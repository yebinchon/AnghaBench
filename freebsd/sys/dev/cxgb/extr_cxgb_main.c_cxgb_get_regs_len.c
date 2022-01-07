
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T3_REGMAP_SIZE ;

__attribute__((used)) static int
cxgb_get_regs_len(void)
{
 return T3_REGMAP_SIZE;
}
