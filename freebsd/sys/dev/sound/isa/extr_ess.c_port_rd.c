
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int bus_space_read_1 (int ,int ,int) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static int
port_rd(struct resource *port, int off)
{
 return bus_space_read_1(rman_get_bustag(port),
    rman_get_bushandle(port),
    off);
}
