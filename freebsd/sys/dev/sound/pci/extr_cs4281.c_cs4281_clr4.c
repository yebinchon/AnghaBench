
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int cs4281_rd (struct sc_info*,int) ;
 int cs4281_wr (struct sc_info*,int,int) ;

__attribute__((used)) static inline void
cs4281_clr4(struct sc_info *sc, int regno, u_int32_t mask)
{
    u_int32_t r;
    r = cs4281_rd(sc, regno);
    cs4281_wr(sc, regno, r & ~mask);
}
