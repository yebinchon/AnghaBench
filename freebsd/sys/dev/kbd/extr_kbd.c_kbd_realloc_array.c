
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;
typedef int keyboard_switch_t ;


 scalar_t__ ARRAY_DELTA ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bcopy (int **,int **,int) ;
 scalar_t__ bootverbose ;
 int free (int **,int ) ;
 int ** kbdsw ;
 int ** keyboard ;
 int keyboards ;
 int ** malloc (int,int ,int) ;
 int printf (char*,int) ;
 int rounddown (scalar_t__,scalar_t__) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
kbd_realloc_array(void)
{
 keyboard_t **new_kbd;
 keyboard_switch_t **new_kbdsw;
 int newsize;
 int s;

 s = spltty();
 newsize = rounddown(keyboards + ARRAY_DELTA, ARRAY_DELTA);
 new_kbd = malloc(sizeof(*new_kbd)*newsize, M_DEVBUF, M_NOWAIT|M_ZERO);
 if (new_kbd == ((void*)0)) {
  splx(s);
  return (ENOMEM);
 }
 new_kbdsw = malloc(sizeof(*new_kbdsw)*newsize, M_DEVBUF,
       M_NOWAIT|M_ZERO);
 if (new_kbdsw == ((void*)0)) {
  free(new_kbd, M_DEVBUF);
  splx(s);
  return (ENOMEM);
 }
 bcopy(keyboard, new_kbd, sizeof(*keyboard)*keyboards);
 bcopy(kbdsw, new_kbdsw, sizeof(*kbdsw)*keyboards);
 if (keyboards > 1) {
  free(keyboard, M_DEVBUF);
  free(kbdsw, M_DEVBUF);
 }
 keyboard = new_kbd;
 kbdsw = new_kbdsw;
 keyboards = newsize;
 splx(s);

 if (bootverbose)
  printf("kbd: new array size %d\n", keyboards);

 return (0);
}
