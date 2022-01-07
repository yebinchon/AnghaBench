
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {int dummy; } ;


 int SBDSP_STATUS ;
 int sb_rd (struct sb_info*,int ) ;

__attribute__((used)) static int
sb_dspready(struct sb_info *sb)
{
 return ((sb_rd(sb, SBDSP_STATUS) & 0x80) == 0);
}
