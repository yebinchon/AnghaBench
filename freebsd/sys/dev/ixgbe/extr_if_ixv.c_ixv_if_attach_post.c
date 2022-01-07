
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int device_printf (int ,char*,int) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixv_add_stats_sysctls (struct adapter*) ;
 int ixv_init_stats (struct adapter*) ;
 int ixv_save_stats (struct adapter*) ;
 int ixv_setup_interface (int ) ;

__attribute__((used)) static int
ixv_if_attach_post(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 int error = 0;


 error = ixv_setup_interface(ctx);
 if (error) {
  device_printf(dev, "Interface setup failed: %d\n", error);
  goto end;
 }


 ixv_save_stats(adapter);
 ixv_init_stats(adapter);
 ixv_add_stats_sysctls(adapter);

end:
 return error;
}
