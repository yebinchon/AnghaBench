
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int desc; } ;
typedef int bdaddr_t ;


 int FAILED ;
 int OK ;
 int clean_config () ;
 struct hid_device* get_hid_device (int *) ;
 int hid_dump_descriptor (int ) ;
 scalar_t__ read_config_file () ;

__attribute__((used)) static int
hid_dump(bdaddr_t *bdaddr, int argc, char **argv)
{
 struct hid_device *hd = ((void*)0);
 int e = FAILED;

 if (read_config_file() == 0) {
  if ((hd = get_hid_device(bdaddr)) != ((void*)0)) {
   hid_dump_descriptor(hd->desc);
   e = OK;
  }

  clean_config();
 }

 return (e);
}
