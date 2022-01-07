
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct agg_info {int curpwr; int dev; } ;


 int AC97_REG_POWER ;
 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int,int) ;
 int DELAY (int) ;




 int PORT_HOSTINT_CTRL ;
 int PORT_HOSTINT_STAT ;
 int PORT_RINGBUS_CTRL ;
 int RINGBUS_CTRL_ACLINK_ENABLED ;
 int RINGBUS_CTRL_RINGBUS_ENABLED ;
 int agg_init (struct agg_info*) ;
 int agg_rdcodec (struct agg_info*,int ) ;
 int agg_wrcodec (struct agg_info*,int ,int) ;
 int device_printf (int ,char*) ;
 int pci_set_powerstate (int ,int const) ;
 int wp_stoptimer (struct agg_info*) ;

__attribute__((used)) static void
agg_power(struct agg_info *ess, int status)
{
 u_int8_t lastpwr;

 lastpwr = ess->curpwr;
 if (lastpwr == status)
  return;

 switch (status) {
 case 131:
 case 130:
  switch (lastpwr) {
  case 129:
   pci_set_powerstate(ess->dev, status);

   agg_wrcodec(ess, AC97_REG_POWER, 0);
   DELAY(100);





   AGG_WR(ess, PORT_RINGBUS_CTRL,
          (AGG_RD(ess, PORT_RINGBUS_CTRL, 4)
    & ~RINGBUS_CTRL_ACLINK_ENABLED)
          | RINGBUS_CTRL_RINGBUS_ENABLED, 4);
   DELAY(50);
   AGG_WR(ess, PORT_RINGBUS_CTRL,
          AGG_RD(ess, PORT_RINGBUS_CTRL, 4)
          | RINGBUS_CTRL_ACLINK_ENABLED, 4);
   break;
  case 128:

   pci_set_powerstate(ess->dev, 131);
   DELAY(100);
   agg_init(ess);

  case 131:
  case 130:
   pci_set_powerstate(ess->dev, status);
   break;
  }
  break;
 case 129:
  switch (lastpwr) {
  case 128:

   pci_set_powerstate(ess->dev, 131);
   DELAY(100);
   agg_init(ess);

  case 131:
  case 130:

   AGG_WR(ess, PORT_RINGBUS_CTRL,
          AGG_RD(ess, PORT_RINGBUS_CTRL, 4)
          & ~RINGBUS_CTRL_RINGBUS_ENABLED, 4);
   DELAY(100);
   agg_wrcodec(ess, AC97_REG_POWER, 0x300);
   DELAY(100);
   break;
  }
  pci_set_powerstate(ess->dev, status);
  break;
 case 128:

  agg_wrcodec(ess, AC97_REG_POWER, 0xdf00);
  DELAY(100);
  AGG_WR(ess, PORT_RINGBUS_CTRL, 0, 4);

  if (lastpwr != 129)
   wp_stoptimer(ess);
  AGG_WR(ess, PORT_HOSTINT_CTRL, 0, 2);
  AGG_WR(ess, PORT_HOSTINT_STAT, 0xff, 1);
  pci_set_powerstate(ess->dev, status);
  break;
 default:

  status = lastpwr;
  break;
 }

 ess->curpwr = status;
}
