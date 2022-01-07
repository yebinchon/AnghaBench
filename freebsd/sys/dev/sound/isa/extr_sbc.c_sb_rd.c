
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int bus_space_read_1 (int ,int ,int) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static int
sb_rd(struct resource *io, int reg)
{
 return bus_space_read_1(rman_get_bustag(io),
    rman_get_bushandle(io),
    reg);
}
