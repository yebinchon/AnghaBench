
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t USB_ERR_MAX ;
 char const** errstr_table ;

__attribute__((used)) static const char *
usb_errstr(uint32_t error)
{
 if (error >= USB_ERR_MAX || errstr_table[error] == ((void*)0))
  return ("UNKNOWN");
 else
  return (errstr_table[error]);
}
