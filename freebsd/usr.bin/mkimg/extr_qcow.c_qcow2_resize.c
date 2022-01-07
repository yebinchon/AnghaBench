
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lba_t ;


 int QCOW_VERSION_2 ;
 int qcow_resize (int ,int ) ;

__attribute__((used)) static int
qcow2_resize(lba_t imgsz)
{

 return (qcow_resize(imgsz, QCOW_VERSION_2));
}
