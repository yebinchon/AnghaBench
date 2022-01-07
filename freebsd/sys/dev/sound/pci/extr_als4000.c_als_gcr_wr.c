
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int sh; int st; } ;


 int ALS_GCR_DATA ;
 int ALS_GCR_INDEX ;
 int bus_space_write_1 (int ,int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int ,int) ;

__attribute__((used)) static void
als_gcr_wr(struct sc_info *sc, int index, int data)
{
 bus_space_write_1(sc->st, sc->sh, ALS_GCR_INDEX, index);
 bus_space_write_4(sc->st, sc->sh, ALS_GCR_DATA, data);
}
