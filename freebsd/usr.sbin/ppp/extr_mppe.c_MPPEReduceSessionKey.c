
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mppe_state {int keybits; int* sesskey; } ;



__attribute__((used)) static void
MPPEReduceSessionKey(struct mppe_state *mp)
{
  switch(mp->keybits) {
  case 40:
    mp->sesskey[2] = 0x9e;
    mp->sesskey[1] = 0x26;
  case 56:
    mp->sesskey[0] = 0xd1;
  case 128:
    break;
  }
}
