
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BDADDR_BREDR ;
 int BDADDR_LE_PUBLIC ;
 int BDADDR_LE_RANDOM ;




__attribute__((used)) static int ng_hci_linktype_to_addrtype(int linktype)
{
 switch(linktype){
 case 129:
  return BDADDR_LE_PUBLIC;
 case 128:
  return BDADDR_LE_RANDOM;
 case 130:

 default:
  return BDADDR_BREDR;
 }
 return BDADDR_BREDR;
}
