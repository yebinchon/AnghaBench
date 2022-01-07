
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** table; } ;
struct TYPE_6__ {int b; } ;
typedef TYPE_2__ PTW_attackstate ;


 int PTW_KEYHSBYTES ;
 int bzero (TYPE_2__*,int) ;
 TYPE_2__* malloc (int) ;
 int n ;

PTW_attackstate * PTW_newattackstate() {
 int i,k;
 PTW_attackstate * state = ((void*)0);
 state = malloc(sizeof(PTW_attackstate));
 if (state == ((void*)0)) {
  return ((void*)0);
 }
 bzero(state, sizeof(PTW_attackstate));
 for (i = 0; i < PTW_KEYHSBYTES; i++) {
                for (k = 0; k < n; k++) {
                        state->table[i][k].b = k;
                }
        }
        return state;
}
