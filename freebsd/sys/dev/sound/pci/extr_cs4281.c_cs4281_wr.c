
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int sh; int st; } ;


 int DELAY (int) ;
 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static inline void
cs4281_wr(struct sc_info *sc, int regno, u_int32_t data)
{
    bus_space_write_4(sc->st, sc->sh, regno, data);
    DELAY(100);
}
