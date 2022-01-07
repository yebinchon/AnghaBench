
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTW_attackstate ;


 int free (int *) ;

void PTW_freeattackstate(PTW_attackstate * state) {
 free(state);
 return;
}
