
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int IVBYTES ;
 int memcpy (size_t*,int ,int) ;
 int n ;
 int rc4initial ;

__attribute__((used)) static void guesskeybytes(uint8_t * iv, uint8_t * keystream, uint8_t * result, int kb) {
        uint8_t state[n];
        uint8_t j = 0;
        uint8_t tmp;
        int i;
        int jj = IVBYTES;
        uint8_t ii;
        uint8_t s = 0;
        memcpy(state, rc4initial, n);
        for (i = 0; i < IVBYTES; i++) {
                j += state[i] + iv[i];
                tmp = state[i];
                state[i] = state[j];
                state[j] = tmp;
        }
        for (i = 0; i < kb; i++) {
                tmp = jj - keystream[jj-1];
                ii = 0;
                while(tmp != state[ii]) {
                        ii++;
                }
                s += state[jj];
                ii -= (j+s);
                result[i] = ii;
                jj++;
        }
        return;
}
