
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct resource {int dummy; } ;


 int bus_write_1 (struct resource*,int ,int) ;

__attribute__((used)) static void
nvt_conf_exit(struct resource* res, uint16_t port)
{
 bus_write_1(res, 0, 0xaa);
}
