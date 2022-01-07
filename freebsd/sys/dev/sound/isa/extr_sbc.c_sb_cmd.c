
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct resource {int dummy; } ;


 int sb_dspwr (struct resource*,int ) ;

__attribute__((used)) static int
sb_cmd(struct resource *io, u_char val)
{
     return sb_dspwr(io, val);
}
