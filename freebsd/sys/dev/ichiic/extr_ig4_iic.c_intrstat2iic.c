
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ig4iic_softc_t ;


 int IG4_ABRTSRC_ACKED_START ;
 int IG4_ABRTSRC_ARBLOST ;
 int IG4_ABRTSRC_GENCALL_NOACK ;
 int IG4_ABRTSRC_GENCALL_READ ;
 int IG4_ABRTSRC_NORESTART_10 ;
 int IG4_ABRTSRC_NORESTART_START ;
 int IG4_ABRTSRC_TRANSFER ;
 int IG4_ABRTSRC_TXNOACK_ADDR10_1 ;
 int IG4_ABRTSRC_TXNOACK_ADDR10_2 ;
 int IG4_ABRTSRC_TXNOACK_ADDR7 ;
 int IG4_ABRTSRC_TXNOACK_DATA ;
 int IG4_INTR_RX_OVER ;
 int IG4_INTR_RX_UNDER ;
 int IG4_INTR_TX_ABRT ;
 int IG4_INTR_TX_OVER ;
 int IG4_REG_CLR_RX_OVER ;
 int IG4_REG_CLR_RX_UNDER ;
 int IG4_REG_CLR_TX_ABORT ;
 int IG4_REG_CLR_TX_OVER ;
 int IG4_REG_TX_ABRT_SOURCE ;
 int IIC_EBUSBSY ;
 int IIC_EBUSERR ;
 int IIC_ENOACK ;
 int IIC_ENOTSUPP ;
 int IIC_EOVERFLOW ;
 int IIC_ESTATUS ;
 int IIC_EUNDERFLOW ;
 int IIC_NOERR ;
 int reg_read (int *,int ) ;

__attribute__((used)) static int
intrstat2iic(ig4iic_softc_t *sc, uint32_t val)
{
 uint32_t src;

 if (val & IG4_INTR_RX_UNDER)
  reg_read(sc, IG4_REG_CLR_RX_UNDER);
 if (val & IG4_INTR_RX_OVER)
  reg_read(sc, IG4_REG_CLR_RX_OVER);
 if (val & IG4_INTR_TX_OVER)
  reg_read(sc, IG4_REG_CLR_TX_OVER);

 if (val & IG4_INTR_TX_ABRT) {
  src = reg_read(sc, IG4_REG_TX_ABRT_SOURCE);
  reg_read(sc, IG4_REG_CLR_TX_ABORT);

  if (src & IG4_ABRTSRC_TRANSFER)
   return (IIC_ESTATUS);

  if (src & IG4_ABRTSRC_ARBLOST)
   return (IIC_EBUSBSY);

  if (src & (IG4_ABRTSRC_TXNOACK_ADDR7 |
      IG4_ABRTSRC_TXNOACK_ADDR10_1 |
      IG4_ABRTSRC_TXNOACK_ADDR10_2 |
      IG4_ABRTSRC_TXNOACK_DATA |
      IG4_ABRTSRC_GENCALL_NOACK))
   return (IIC_ENOACK);

  if (src & (IG4_ABRTSRC_GENCALL_READ |
      IG4_ABRTSRC_NORESTART_START |
      IG4_ABRTSRC_NORESTART_10))
   return (IIC_ENOTSUPP);

  if (src & IG4_ABRTSRC_ACKED_START)
   return (IIC_EBUSERR);
 }




 if (val & (IG4_INTR_TX_OVER | IG4_INTR_RX_OVER))
  return (IIC_EOVERFLOW);
 if (val & IG4_INTR_RX_UNDER)
  return (IIC_EUNDERFLOW);

 return (IIC_NOERR);
}
