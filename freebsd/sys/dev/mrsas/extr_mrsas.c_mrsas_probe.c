
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mrsas_ident {int desc; } ;
typedef int device_t ;


 int ENXIO ;
 char* MRSAS_VERSION ;
 int device_set_desc (int ,int ) ;
 struct mrsas_ident* mrsas_find_ident (int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
mrsas_probe(device_t dev)
{
 static u_int8_t first_ctrl = 1;
 struct mrsas_ident *id;

 if ((id = mrsas_find_ident(dev)) != ((void*)0)) {
  if (first_ctrl) {
   printf("AVAGO MegaRAID SAS FreeBSD mrsas driver version: %s\n",
       MRSAS_VERSION);
   first_ctrl = 0;
  }
  device_set_desc(dev, id->desc);

  return (-30);
 }
 return (ENXIO);
}
