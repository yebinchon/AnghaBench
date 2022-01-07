
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_ENABLE_IO (int ,int ,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static void
cbb_activate_window(device_t brdev, int type)
{

 PCI_ENABLE_IO(device_get_parent(brdev), brdev, type);
}
