
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int sh; int st; } ;


 int bus_space_read_1 (int ,int ,int ) ;

__attribute__((used)) static u_int8_t
als_ack_read(struct sc_info *sc, u_int8_t addr)
{
 u_int8_t r = bus_space_read_1(sc->st, sc->sh, addr);
 return r;
}
