
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
typedef TYPE_1__* bthid_session_p ;
typedef int bitstr_t ;
struct TYPE_3__ {int * keys1; int ukbd; int vkbd; int * keys2; int * srv; } ;


 int assert (int) ;
 int bit_clear (int *,int) ;
 int bit_ffs (int *,int,int*) ;
 int bit_set (int *,int) ;
 scalar_t__ bit_test (int *,int) ;
 int bitstr_size (int) ;
 int kbd_write (int *,int,int,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int uinput_kbd_write (int *,int,int,int ) ;
 int xsize ;

int32_t
kbd_process_keys(bthid_session_p s)
{
 bitstr_t diff[bitstr_size(xsize)];
 int32_t f1, f2, i;

 assert(s != ((void*)0));
 assert(s->srv != ((void*)0));


 bit_ffs(s->keys1, xsize, &f1);


 bit_ffs(s->keys2, xsize, &f2);

 if (f1 == -1) {

  if (f2 != -1) {

   kbd_write(s->keys2, f2, 0, s->vkbd);
   uinput_kbd_write(s->keys2, f2, 0, s->ukbd);
   memset(s->keys2, 0, bitstr_size(xsize));
  }

  return (0);
 }

 if (f2 == -1) {

  assert(f1 != -1);

  memcpy(s->keys2, s->keys1, bitstr_size(xsize));
  kbd_write(s->keys1, f1, 1, s->vkbd);
  uinput_kbd_write(s->keys1, f1, 1, s->ukbd);
  memset(s->keys1, 0, bitstr_size(xsize));

  return (0);
 }


 memset(diff, 0, bitstr_size(xsize));

 for (i = f2; i < xsize; i ++) {
  if (bit_test(s->keys2, i)) {
   if (!bit_test(s->keys1, i)) {
    bit_clear(s->keys2, i);
    bit_set(diff, i);
   }
  }
 }

 for (i = f1; i < xsize; i++) {
  if (bit_test(s->keys1, i)) {
   if (!bit_test(s->keys2, i))
    bit_set(s->keys2, i);
   else
    bit_clear(s->keys1, i);
  }
 }

 bit_ffs(diff, xsize, &f2);
 if (f2 > 0) {
  kbd_write(diff, f2, 0, s->vkbd);
  uinput_kbd_write(diff, f2, 0, s->ukbd);
 }

 bit_ffs(s->keys1, xsize, &f1);
 if (f1 > 0) {
  kbd_write(s->keys1, f1, 1, s->vkbd);
  uinput_kbd_write(s->keys1, f1, 1, s->ukbd);
  memset(s->keys1, 0, bitstr_size(xsize));
 }

 return (0);
}
