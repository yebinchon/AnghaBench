
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct resource {int dummy; } ;


 int sio_write (struct resource*,int,int) ;

__attribute__((used)) static void
ite_conf_exit(struct resource* res, uint16_t port)
{
 sio_write(res, 0x02, 0x02);
}
