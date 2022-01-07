
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ucom_softc {int dummy; } ;


 scalar_t__ SER_DCD ;

__attribute__((used)) static void
ubser_cfg_get_status(struct ucom_softc *ucom, uint8_t *lsr, uint8_t *msr)
{

 *lsr = 0;
 *msr = SER_DCD;
}
