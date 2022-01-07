
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_callbacks {int dummy; } ;
typedef int device_t ;


 int BAR ;
 int END ;
 int FUNCE ;
 int FUNCID ;
 int GENERIC ;
 int INDIRECT ;
 int LINKTARGET ;
 int LONGLINK_A ;
 int LONGLINK_C ;
 int LONGLINK_CB ;
 int LONGLINK_MFC ;
 struct tuple_callbacks MAKETUPLE (int ,int ) ;
 int MANFID ;
 int VERS_1 ;
 int bar ;
 int cardbus_parse_cis (int ,int ,struct tuple_callbacks*,int *) ;
 int end ;
 int funce ;
 int funcid ;
 int generic ;
 int linktarget ;
 int manfid ;
 int unhandled ;
 int vers_1 ;

int
cardbus_do_cis(device_t cbdev, device_t child)
{
 struct tuple_callbacks init_callbacks[] = {
  MAKETUPLE(LONGLINK_CB, unhandled),
  MAKETUPLE(INDIRECT, unhandled),
  MAKETUPLE(LONGLINK_MFC, unhandled),
  MAKETUPLE(BAR, bar),
  MAKETUPLE(LONGLINK_A, unhandled),
  MAKETUPLE(LONGLINK_C, unhandled),
  MAKETUPLE(LINKTARGET, linktarget),
  MAKETUPLE(VERS_1, vers_1),
  MAKETUPLE(MANFID, manfid),
  MAKETUPLE(FUNCID, funcid),
  MAKETUPLE(FUNCE, funce),
  MAKETUPLE(END, end),
  MAKETUPLE(GENERIC, generic),
 };

 return (cardbus_parse_cis(cbdev, child, init_callbacks, ((void*)0)));
}
