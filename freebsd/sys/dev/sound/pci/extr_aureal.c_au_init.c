
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct au_info {int* x; int* y; int* z; scalar_t__* routes; } ;
typedef int device_t ;


 int AU_CDC_READY ;
 int AU_IRQ_ENABLE ;
 int AU_REG_ADB ;
 int AU_REG_CODECCHN ;
 int AU_REG_CODECEN ;
 int AU_REG_CODECST ;
 int AU_REG_IRQGLOB ;
 int AU_REG_RTBASE ;
 int DELAY (int) ;
 int au_addroute (struct au_info*,int,int,int) ;
 int au_clrfifo (struct au_info*,int) ;
 int au_encodec (struct au_info*,int) ;
 int au_rd (struct au_info*,int ,int,int) ;
 int au_wr (struct au_info*,int ,int,int,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
au_init(device_t dev, struct au_info *au)
{
 u_int32_t i, j;

 au_wr(au, 0, AU_REG_IRQGLOB, 0xffffffff, 4);
 DELAY(100000);



 for (i=0; i<32; i++) {
  au_wr(au, 0, AU_REG_CODECCHN+(i<<2), 0, 4);
  DELAY(10000);
 }
 if (1) {
  au_wr(au, 0, AU_REG_CODECST, 0x8068, 4);
  DELAY(10000);
  au_wr(au, 0, AU_REG_CODECST, 0x00e8, 4);
  DELAY(10000);
 } else {
  au_wr(au, 0, AU_REG_CODECST, 0x00a8, 4);
   DELAY(100000);
  au_wr(au, 0, AU_REG_CODECST, 0x80a8, 4);
  DELAY(100000);
  au_wr(au, 0, AU_REG_CODECST, 0x80e8, 4);
  DELAY(100000);
  au_wr(au, 0, AU_REG_CODECST, 0x80a8, 4);
  DELAY(100000);
  au_wr(au, 0, AU_REG_CODECST, 0x00a8, 4);
  DELAY(100000);
  au_wr(au, 0, AU_REG_CODECST, 0x00e8, 4);
  DELAY(100000);
 }


 for (i=0; i<32; i++) {
  au_wr(au, 0, AU_REG_CODECCHN+(i<<2), 0, 4);
  DELAY(10000);
 }
 au_wr(au, 0, AU_REG_CODECST, 0xe8, 4);
 DELAY(10000);
 au_wr(au, 0, AU_REG_CODECEN, 0, 4);


 i=j=0;
 while (j<100 && (i & AU_CDC_READY)==0) {
  i=au_rd(au, 0, AU_REG_CODECST, 4);
  DELAY(1000);
  j++;
 }
 if (j==100) device_printf(dev, "codec not ready, status 0x%x\n", i);



 for (i=0; i<32; i++) au->x[i]=i+0x67;
 for (i=0; i<128; i++) au->y[i]=0x7f;
 for (i=0; i<128; i++) au->z[i]=0x1f;
 au_wr(au, 0, AU_REG_ADB, 0, 4);
 for (i=0; i<124; i++) au_wr(au, 0, AU_REG_RTBASE+(i<<2), 0xffffffff, 4);


 i=au_rd(au, 0, 0x107c0, 4);
  if (i!=0xdeadbeef) device_printf(dev, "dma check failed: 0x%x\n", i);


 au_wr(au, 0, AU_REG_IRQGLOB,
       au_rd(au, 0, AU_REG_IRQGLOB, 4) | AU_IRQ_ENABLE, 4);



 au->routes[0]=au->routes[1]=au->routes[2]=au->routes[3]=0;



 au_addroute(au, 0x11, 0x48, 0x02);
 au_addroute(au, 0x11, 0x49, 0x03);
 au_encodec(au, 0);
 au_encodec(au, 1);

 for (i=0; i<48; i++) au_wr(au, 0, 0xf800+(i<<2), 0x20, 4);
 for (i=2; i<6; i++) au_wr(au, 0, 0xf800+(i<<2), 0, 4);
 au_wr(au, 0, 0xf8c0, 0x0843, 4);
 for (i=0; i<4; i++) au_clrfifo(au, i);

 return (0);
}
