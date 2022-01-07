
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int DELAY (int) ;
 int cs4281_rd (struct sc_info*,int) ;

__attribute__((used)) static int
cs4281_waitset(struct sc_info *sc, int regno, u_int32_t mask, int tries)
{
    u_int32_t v;

    while (tries > 0) {
 DELAY(100);
 v = cs4281_rd(sc, regno);
 if ((v & mask) == mask) break;
 tries --;
    }
    return tries;
}
