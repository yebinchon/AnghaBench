
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int INT_MAX ;


 int delete_unrhdr (int ) ;
 int new_unrhdr (int ,int ,int *) ;
 int uhso_etag ;
 int uhso_ifnet_unit ;
 int uhso_test_autoinst ;
 int usb_dev_configured ;

__attribute__((used)) static int
uhso_driver_loaded(struct module *mod, int what, void *arg)
{
 switch (what) {
 case 129:

  uhso_etag = EVENTHANDLER_REGISTER(usb_dev_configured,
      uhso_test_autoinst, ((void*)0), EVENTHANDLER_PRI_ANY);

  uhso_ifnet_unit = new_unrhdr(0, INT_MAX, ((void*)0));
  break;
 case 128:
  EVENTHANDLER_DEREGISTER(usb_dev_configured, uhso_etag);
  delete_unrhdr(uhso_ifnet_unit);
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
