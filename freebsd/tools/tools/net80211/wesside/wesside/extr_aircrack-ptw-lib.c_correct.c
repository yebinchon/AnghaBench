
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int rc4state ;
struct TYPE_5__ {int sessions_collected; TYPE_1__* sessions; } ;
struct TYPE_4__ {int* keystream; int * iv; } ;
typedef TYPE_2__ PTW_attackstate ;


 size_t IVBYTES ;
 int PTW_KSBYTES ;
 int TESTBYTES ;
 int memcpy (int *,int *,size_t) ;
 int rc4init (int *,int,int *) ;
 int rc4update (int *) ;

__attribute__((used)) static int correct(PTW_attackstate * state, uint8_t * key, int keylen) {
 int i;
        int j;
        uint8_t keybuf[PTW_KSBYTES];
        rc4state rc4state;

        for (i = 0; i < state->sessions_collected; i++) {
                memcpy(&keybuf[IVBYTES], key, keylen);
                memcpy(keybuf, state->sessions[i].iv, IVBYTES);
                rc4init(keybuf, keylen+IVBYTES, &rc4state);
                for (j = 0; j < TESTBYTES; j++) {
                        if ((rc4update(&rc4state) ^ state->sessions[i].keystream[j]) != 0) {
                                return 0;
                        }
                }
        }
        return 1;
}
