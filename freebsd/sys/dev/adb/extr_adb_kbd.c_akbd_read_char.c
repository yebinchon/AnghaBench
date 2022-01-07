
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct adb_kbd_softc {scalar_t__ sc_mode; int* at_buffered_char; int buffers; int* buffer; int sc_mutex; int sc_cv; } ;
typedef int keyboard_t ;


 scalar_t__ K_CODE ;
 scalar_t__ K_RAW ;
 int NOKEY ;
 int SCAN_PREFIX ;
 int SCAN_PREFIX_CTL ;
 int SCAN_PREFIX_E0 ;
 int SCAN_PREFIX_SHIFT ;
 int SCAN_RELEASE ;
 int* adb_to_at_scancode_map ;
 int cv_wait (int *,int *) ;
 int keycode2scancode (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static u_int
akbd_read_char(keyboard_t *kbd, int wait)
{
 struct adb_kbd_softc *sc;
 uint16_t key;
 uint8_t adb_code;
 int i;

 sc = (struct adb_kbd_softc *)(kbd);

 mtx_lock(&sc->sc_mutex);
 if (!sc->buffers && wait)
  cv_wait(&sc->sc_cv,&sc->sc_mutex);

 if (!sc->buffers) {
  mtx_unlock(&sc->sc_mutex);
  return (NOKEY);
 }

 adb_code = sc->buffer[0];

 for (i = 1; i < sc->buffers; i++)
  sc->buffer[i-1] = sc->buffer[i];

 sc->buffers--;
  key = adb_code;


 mtx_unlock(&sc->sc_mutex);

 return (key);
}
