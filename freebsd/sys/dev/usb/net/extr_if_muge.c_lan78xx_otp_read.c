
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct muge_softc {int dummy; } ;


 int EINVAL ;
 scalar_t__ OTP_INDICATOR_1 ;
 scalar_t__ OTP_INDICATOR_2 ;
 int OTP_INDICATOR_OFFSET ;
 int lan78xx_otp_read_raw (struct muge_softc*,int,scalar_t__*,int) ;

__attribute__((used)) static int
lan78xx_otp_read(struct muge_softc *sc, uint16_t off, uint8_t *buf,
    uint16_t buflen)
{
 uint8_t sig;
 int err;

 err = lan78xx_otp_read_raw(sc, OTP_INDICATOR_OFFSET, &sig, 1);
 if (err == 0) {
  if (sig == OTP_INDICATOR_1) {
  } else if (sig == OTP_INDICATOR_2) {
   off += 0x100;
  } else {
   err = -EINVAL;
  }
  if (!err)
   err = lan78xx_otp_read_raw(sc, off, buf, buflen);
 }
 return (err);
}
