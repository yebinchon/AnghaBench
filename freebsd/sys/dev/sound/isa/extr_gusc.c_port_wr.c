
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int bus_space_write_1 (int ,int ,int,unsigned char) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static void
port_wr(struct resource *r, int i, unsigned char v)
{
 bus_space_write_1(rman_get_bustag(r), rman_get_bushandle(r), i, v);
}
