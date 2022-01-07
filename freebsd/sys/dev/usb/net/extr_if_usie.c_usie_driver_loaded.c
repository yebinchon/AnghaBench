
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;


 int usb_dev_configured ;
 int usie_autoinst ;
 int usie_etag ;

__attribute__((used)) static int
usie_driver_loaded(struct module *mod, int what, void *arg)
{
 switch (what) {
 case 129:

  usie_etag = EVENTHANDLER_REGISTER(usb_dev_configured,
      usie_autoinst, ((void*)0), EVENTHANDLER_PRI_ANY);
  break;
 case 128:
  EVENTHANDLER_DEREGISTER(usb_dev_configured, usie_etag);
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
