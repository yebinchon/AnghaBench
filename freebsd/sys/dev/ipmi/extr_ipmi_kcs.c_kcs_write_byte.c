
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ipmi_softc {int dummy; } ;


 int KCS_DATA ;
 int KCS_STATUS_IBF ;
 scalar_t__ KCS_STATUS_STATE (int) ;
 scalar_t__ KCS_STATUS_STATE_WRITE ;
 int OUTB (struct ipmi_softc*,int ,int ) ;
 int kcs_clear_obf (struct ipmi_softc*,int) ;
 int kcs_wait_for_ibf (struct ipmi_softc*,int ) ;

__attribute__((used)) static int
kcs_write_byte(struct ipmi_softc *sc, u_char data)
{
 int status;


 OUTB(sc, KCS_DATA, data);


 status = kcs_wait_for_ibf(sc, 0);
 if (status & KCS_STATUS_IBF)
  return (0);

 if (KCS_STATUS_STATE(status) != KCS_STATUS_STATE_WRITE)
  return (0);


 kcs_clear_obf(sc, status);
 return (1);
}
