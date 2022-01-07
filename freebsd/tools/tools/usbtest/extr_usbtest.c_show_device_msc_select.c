
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_TEMP_MSC ;
 int set_template (int ) ;

__attribute__((used)) static void
show_device_msc_select(uint8_t level)
{
 set_template(USB_TEMP_MSC);
}
