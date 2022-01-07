
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_msc_params {int io_size; } ;
__attribute__((used)) static const char *
get_io_size(const struct usb_msc_params *p)
{
 ;
 switch (p->io_size) {
 case 128:
  return ("Random");
 case 129:
  return ("Increasing");
 case 137:
  return ("Single block");
 case 135:
  return ("2 blocks");
 case 133:
  return ("4 blocks");
 case 130:
  return ("8 blocks");
 case 138:
  return ("16 blocks");
 case 134:
  return ("32 blocks");
 case 131:
  return ("64 blocks");
 case 139:
  return ("128 blocks");
 case 136:
  return ("256 blocks");
 case 132:
  return ("512 blocks");
 case 140:
  return ("1024 blocks");
 default:
  return ("Unknown");
 }
}
