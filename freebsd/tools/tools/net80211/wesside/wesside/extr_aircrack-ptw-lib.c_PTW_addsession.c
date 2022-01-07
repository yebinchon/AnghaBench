
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int* seen_iv; size_t sessions_collected; TYPE_2__* sessions; TYPE_1__** table; int packets_collected; } ;
struct TYPE_6__ {int keystream; int iv; } ;
struct TYPE_5__ {int votes; } ;
typedef TYPE_3__ PTW_attackstate ;


 size_t CONTROLSESSIONS ;
 int IVBYTES ;
 int KEYHSBYTES ;
 int KSBYTES ;
 int PTW_KEYHSBYTES ;
 int guesskeybytes (int*,int*,int*,int) ;
 int memcpy (int ,int*,int ) ;

int PTW_addsession(PTW_attackstate * state, uint8_t * iv, uint8_t * keystream) {
 int i;
 int il;
 int ir;
 uint8_t buf[PTW_KEYHSBYTES];

 i = (iv[0] << 16) | (iv[1] << 8) | (iv[2]);
 il = i/8;
 ir = 1 << (i%8);
 if ((state->seen_iv[il] & ir) == 0) {
  state->packets_collected++;
  state->seen_iv[il] |= ir;
  guesskeybytes(iv, keystream, buf, PTW_KEYHSBYTES);
                for (i = 0; i < KEYHSBYTES; i++) {
                 state->table[i][buf[i]].votes++;
                }
  if (state->sessions_collected < CONTROLSESSIONS) {
   memcpy(state->sessions[state->sessions_collected].iv, iv, IVBYTES);
   memcpy(state->sessions[state->sessions_collected].keystream, keystream, KSBYTES);
   state->sessions_collected++;
  }
  return 1;
 } else {
  return 0;
 }
}
