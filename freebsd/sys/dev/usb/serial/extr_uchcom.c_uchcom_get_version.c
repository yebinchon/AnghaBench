
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uchcom_softc {int dummy; } ;
typedef int buf ;


 int UCHCOM_INPUT_BUF_SIZE ;
 int UCHCOM_REQ_GET_VERSION ;
 int uchcom_ctrl_read (struct uchcom_softc*,int ,int ,int ,int *,int) ;

__attribute__((used)) static void
uchcom_get_version(struct uchcom_softc *sc, uint8_t *rver)
{
 uint8_t buf[UCHCOM_INPUT_BUF_SIZE];

 uchcom_ctrl_read(sc, UCHCOM_REQ_GET_VERSION, 0, 0, buf, sizeof(buf));

 if (rver)
  *rver = buf[0];
}
