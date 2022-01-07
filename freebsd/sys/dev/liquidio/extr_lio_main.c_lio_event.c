
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int LIO_CFG_TYPE_DEFAULT ;

 int lio_init_device_list (int ) ;

__attribute__((used)) static int
lio_event(struct module *mod, int event, void *junk)
{

 switch (event) {
 case 128:
  lio_init_device_list(LIO_CFG_TYPE_DEFAULT);
  break;
 default:
  break;
 }

 return (0);
}
