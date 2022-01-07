
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct csr TYPE_1__ ;


typedef int uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct nxprtc_softc {int use_ampm; int dev; scalar_t__ freqadj; scalar_t__ is212x; } ;
typedef scalar_t__ int8_t ;
typedef int csr ;
struct csr {int cs1; int cs2; int cs3; int sec; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int PCF2127_B_TSOFF ;
 int PCF2127_R_AGING_OFFSET ;
 int PCF2127_R_TS_CTL ;
 int PCF2129_B_CLKOUT_HIGHZ ;
 int PCF2129_B_CLKOUT_OTPR ;
 int PCF2129_B_CS1_12HR ;
 int PCF8523_B_CLKOUT_HIGHZ ;
 int PCF8523_B_CS1_12HR ;
 int PCF8523_B_CS3_PM_NOBAT ;
 int PCF8523_M_CS3_PM ;
 int PCF8523_R_TMR_CLKOUT ;
 int PCF85xx_B_CS1_STOP ;
 int PCF85xx_B_SECOND_OS ;
 int PCF85xx_R_CS1 ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct nxprtc_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int WAITFLAGS ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int freqadj_sysctl ;
 int mstosbt (int) ;
 int nxprtc_readfrom (int ,int ,TYPE_1__*,int,int ) ;
 int pause_sbt (char*,int ,int ,int ) ;
 int pcf8523_battery_check (struct nxprtc_softc*) ;
 int read_reg (struct nxprtc_softc*,int ,int*) ;
 int write_reg (struct nxprtc_softc*,int ,int) ;

__attribute__((used)) static int
pcf8523_start(struct nxprtc_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *tree;
 struct csr {
  uint8_t cs1;
  uint8_t cs2;
  uint8_t cs3;
  uint8_t sec;
 } csr;
 int err;
 uint8_t clkout, freqadj;


 if ((err = nxprtc_readfrom(sc->dev, PCF85xx_R_CS1, &csr,
     sizeof(csr), WAITFLAGS)) != 0){
  device_printf(sc->dev, "cannot read RTC control regs\n");
  return (err);
 }







 if ((csr.cs3 & PCF8523_M_CS3_PM) == PCF8523_B_CS3_PM_NOBAT ||
     (csr.cs1 & PCF85xx_B_CS1_STOP) || (csr.sec & PCF85xx_B_SECOND_OS)) {
  device_printf(sc->dev,
      "WARNING: RTC battery failed; time is invalid\n");
  if (sc->is212x) {
   err = write_reg(sc, PCF85xx_R_CS1, 0);
   if (err != 0) {
    device_printf(sc->dev,
        "cannot write CS1 reg\n");
    return (err);
   }

   err = write_reg(sc, PCF2127_R_TS_CTL, PCF2127_B_TSOFF);
   if (err != 0) {
    device_printf(sc->dev,
        "cannot write timestamp control\n");
    return (err);
   }

   clkout = PCF2129_B_CLKOUT_HIGHZ;
   err = write_reg(sc, PCF8523_R_TMR_CLKOUT, clkout);
   if (err == 0)
    err = write_reg(sc, PCF8523_R_TMR_CLKOUT,
        clkout | PCF2129_B_CLKOUT_OTPR);
   if (err != 0) {
    device_printf(sc->dev,
        "cannot write CLKOUT control\n");
    return (err);
   }
   pause_sbt("nxpotp", mstosbt(100), mstosbt(10), 0);
  } else
   clkout = PCF8523_B_CLKOUT_HIGHZ;


  if ((err = write_reg(sc, PCF8523_R_TMR_CLKOUT, clkout)) != 0) {
   device_printf(sc->dev, "cannot write CLKOUT control\n");
   return (err);
  }
 }






 pcf8523_battery_check(sc);
 if (sc->is212x) {
  if (csr.cs1 & PCF2129_B_CS1_12HR)
   sc->use_ampm = 1;

  err = read_reg(sc, PCF2127_R_AGING_OFFSET, &freqadj);
  if (err != 0) {
   device_printf(sc->dev,
       "cannot read AGINGOFFSET register\n");
   return (err);
  }
  sc->freqadj = (int8_t)freqadj;

  ctx = device_get_sysctl_ctx(sc->dev);
  tree = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev));

  SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "freqadj",
      CTLFLAG_RWTUN | CTLTYPE_INT | CTLFLAG_MPSAFE, sc, 0,
      freqadj_sysctl, "I", "Frequency adjust in PPM, range [-7,+8]");
 } else {
  if (csr.cs1 & PCF8523_B_CS1_12HR)
   sc->use_ampm = 1;
 }

 return (0);
}
