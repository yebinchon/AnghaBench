
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct resource {int dummy; } ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static void
port_wr(struct resource *port, int off, u_int8_t data)
{
 if (port)
  bus_space_write_1(rman_get_bustag(port),
      rman_get_bushandle(port),
      off, data);
}
