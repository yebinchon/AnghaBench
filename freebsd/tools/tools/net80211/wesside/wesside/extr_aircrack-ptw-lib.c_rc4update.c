
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {size_t i; size_t j; size_t* s; } ;
typedef TYPE_1__ rc4state ;



__attribute__((used)) static uint8_t rc4update(rc4state * state) {
 uint8_t tmp;
 uint8_t k;
 state->i++;
 state->j += state->s[state->i];
 tmp = state->s[state->i];
 state->s[state->i] = state->s[state->j];
 state->s[state->j] = tmp;
 k = state->s[state->i] + state->s[state->j];

 return state->s[k];
}
