
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_info {int nambarh; int nambart; } ;
typedef int kobj_t ;


 int bus_space_write_2 (int ,int ,int,int ) ;
 int ich_waitcd (struct sc_info*) ;

__attribute__((used)) static int
ich_wrcd(kobj_t obj, void *devinfo, int regno, uint32_t data)
{
 struct sc_info *sc = (struct sc_info *)devinfo;

 regno &= 0xff;
 ich_waitcd(sc);
 bus_space_write_2(sc->nambart, sc->nambarh, regno, data);

 return (0);
}
