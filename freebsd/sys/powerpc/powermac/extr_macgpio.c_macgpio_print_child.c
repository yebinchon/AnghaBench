
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macgpio_devinfo {scalar_t__ gpio_num; int mdi_resources; } ;
typedef int device_t ;


 scalar_t__ GPIO_BASE ;
 scalar_t__ GPIO_EXTINT_BASE ;
 int SYS_RES_IRQ ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct macgpio_devinfo* device_get_ivars (int ) ;
 int printf (char*,scalar_t__) ;
 int resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
macgpio_print_child(device_t dev, device_t child)
{
        struct macgpio_devinfo *dinfo;
        int retval = 0;

        dinfo = device_get_ivars(child);

        retval += bus_print_child_header(dev, child);

 if (dinfo->gpio_num >= GPIO_BASE)
  printf(" gpio %d", dinfo->gpio_num - GPIO_BASE);
 else if (dinfo->gpio_num >= GPIO_EXTINT_BASE)
  printf(" extint-gpio %d", dinfo->gpio_num - GPIO_EXTINT_BASE);
 else if (dinfo->gpio_num >= 0)
  printf(" addr 0x%02x", dinfo->gpio_num);

 resource_list_print_type(&dinfo->mdi_resources, "irq", SYS_RES_IRQ,
     "%jd");
        retval += bus_print_child_footer(dev, child);

        return (retval);
}
