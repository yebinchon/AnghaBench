
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icee_softc {int wr_sz; int type; int size; int dev; } ;


 char* device_get_name (int ) ;
 int device_get_unit (int ) ;
 int resource_int_value (char const*,int,char*,int *) ;

__attribute__((used)) static void
icee_init(struct icee_softc *sc)
{
 const char *dname;
 int dunit;

 dname = device_get_name(sc->dev);
 dunit = device_get_unit(sc->dev);
 resource_int_value(dname, dunit, "size", &sc->size);
 resource_int_value(dname, dunit, "type", &sc->type);
 resource_int_value(dname, dunit, "wr_sz", &sc->wr_sz);
}
