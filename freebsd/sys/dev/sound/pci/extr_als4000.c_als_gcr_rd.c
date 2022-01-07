
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int sh; int st; } ;


 int ALS_GCR_DATA ;
 int ALS_GCR_INDEX ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int) ;

__attribute__((used)) static u_int32_t
als_gcr_rd(struct sc_info *sc, int index)
{
 bus_space_write_1(sc->st, sc->sh, ALS_GCR_INDEX, index);
 return bus_space_read_4(sc->st, sc->sh, ALS_GCR_DATA);
}
