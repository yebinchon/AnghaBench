
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_list {int phy; int rst; int clk; } ;
struct hwrst_list {int phy; int rst; int clk; } ;
struct generic_ehci_fdt_softc {int phy_list; int rst_list; int clk_list; } ;
struct clk_list {int phy; int rst; int clk; } ;
typedef int phy_t ;
typedef int hwreset_t ;
typedef int device_t ;
typedef int clk_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PHY_USB_MODE_HOST ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct phy_list*,int ) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int,int *) ;
 int clk_get_name (int ) ;
 struct generic_ehci_fdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int generic_ehci_attach (int ) ;
 int generic_ehci_fdt_detach (int ) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int,int *) ;
 struct phy_list* malloc (int,int ,int) ;
 int next ;
 int phy_enable (int ) ;
 scalar_t__ phy_get_by_ofw_idx (int ,int ,int,int *) ;
 int phy_usb_set_mode (int ,int ) ;

__attribute__((used)) static int
generic_ehci_fdt_attach(device_t dev)
{
 int err;
 err = generic_ehci_attach(dev);
 if (err != 0)
  goto error;

 return (0);

error:
 generic_ehci_fdt_detach(dev);
 return (err);
}
