
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int modifiers; } ;
struct ukbd_softc {int* sc_buffered_char; TYPE_1__ sc_ndata; } ;
struct TYPE_6__ {int kb_count; struct ukbd_softc* kb_data; } ;
typedef TYPE_2__ keyboard_t ;
typedef int int32_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (TYPE_2__*) ;
 int KEY_RELEASE ;
 int NN ;
 int SCAN_PREFIX ;
 int SCAN_PREFIX_E0 ;
 int UKBD_LOCK_ASSERT () ;
 int ukbd_atkeycode (int,int ) ;
 int ukbd_get_key (struct ukbd_softc*,int) ;
 int ukbd_key2scan (struct ukbd_softc*,int,int ,int) ;

__attribute__((used)) static int
ukbd_read(keyboard_t *kbd, int wait)
{
 struct ukbd_softc *sc = kbd->kb_data;
 int32_t usbcode;






 UKBD_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (-1);
 usbcode = ukbd_get_key(sc, (wait == FALSE) ? 0 : 1);
 if (!KBD_IS_ACTIVE(kbd) || (usbcode == -1))
  return (-1);

 ++(kbd->kb_count);
 return (usbcode);

}
