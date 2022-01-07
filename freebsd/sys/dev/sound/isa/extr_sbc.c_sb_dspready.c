
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int SBDSP_STATUS ;
 int sb_rd (struct resource*,int ) ;

__attribute__((used)) static int
sb_dspready(struct resource *io)
{
 return ((sb_rd(io, SBDSP_STATUS) & 0x80) == 0);
}
