
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int id_max; int* bit_input; } ;
typedef struct uaudio_terminal_node {TYPE_1__ usr; struct uaudio_terminal_node const* root; } const uaudio_terminal_node ;



__attribute__((used)) static const struct uaudio_terminal_node *
uaudio_mixer_get_input(const struct uaudio_terminal_node *iot, uint8_t i)
{
 struct uaudio_terminal_node *root = iot->root;
 uint8_t n;

 n = iot->usr.id_max;
 do {
  if (iot->usr.bit_input[n / 8] & (1 << (n % 8))) {
   if (!i--)
    return (root + n);
  }
 } while (n--);

 return (((void*)0));
}
