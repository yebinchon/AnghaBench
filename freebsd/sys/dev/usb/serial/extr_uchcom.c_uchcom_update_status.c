
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uchcom_softc {int dummy; } ;


 int uchcom_convert_status (struct uchcom_softc*,int ) ;
 int uchcom_get_status (struct uchcom_softc*,int *) ;

__attribute__((used)) static void
uchcom_update_status(struct uchcom_softc *sc)
{
 uint8_t cur;

 uchcom_get_status(sc, &cur);
 uchcom_convert_status(sc, cur);
}
