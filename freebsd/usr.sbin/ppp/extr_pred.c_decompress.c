
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;
struct pred1_state {unsigned char* dict; size_t hash; } ;


 int HASH (struct pred1_state*,int ) ;

__attribute__((used)) static int
decompress(struct pred1_state *state, u_char *source, u_char *dest, int len)
{
  int i, bitmask;
  unsigned char flags, *orgdest;

  orgdest = dest;
  while (len) {
    flags = *source++;
    len--;
    for (i = 0, bitmask = 1; i < 8; i++, bitmask <<= 1) {
      if (flags & bitmask) {
 *dest = state->dict[state->hash];
      } else {
 if (!len)
   break;
 state->dict[state->hash] = *source;
 *dest = *source++;
 len--;
      }
      HASH(state, *dest++);
    }
  }
  return (dest - orgdest);
}
