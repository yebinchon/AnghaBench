
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ipmi_softc {int dummy; } ;


 int INB (struct ipmi_softc*,int ) ;
 int KCS_DATA ;
 int KCS_DATA_IN_READ ;
 int KCS_STATUS_OBF ;
 scalar_t__ KCS_STATUS_STATE (int) ;
 scalar_t__ KCS_STATUS_STATE_IDLE ;
 scalar_t__ KCS_STATUS_STATE_READ ;
 int OUTB (struct ipmi_softc*,int ,int ) ;
 int kcs_wait_for_ibf (struct ipmi_softc*,int ) ;
 int kcs_wait_for_obf (struct ipmi_softc*,int) ;

__attribute__((used)) static int
kcs_read_byte(struct ipmi_softc *sc, u_char *data)
{
 int status;
 u_char dummy;


 status = kcs_wait_for_ibf(sc, 0);


 if (KCS_STATUS_STATE(status) == KCS_STATUS_STATE_READ) {


  status = kcs_wait_for_obf(sc, 1);
  if ((status & KCS_STATUS_OBF) == 0)
   return (0);


  *data = INB(sc, KCS_DATA);


  OUTB(sc, KCS_DATA, KCS_DATA_IN_READ);
  return (1);
 }


 if (KCS_STATUS_STATE(status) == KCS_STATUS_STATE_IDLE) {


  status = kcs_wait_for_obf(sc, 1);
  if ((status & KCS_STATUS_OBF) == 0)
   return (0);


  dummy = INB(sc, KCS_DATA);
  return (2);
 }


 return (0);
}
