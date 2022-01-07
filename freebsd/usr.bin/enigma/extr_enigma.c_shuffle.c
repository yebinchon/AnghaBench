
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 unsigned int MASK ;
 int ROTORSZ ;
 int* buf ;

__attribute__((used)) static void
shuffle(char deckary[])
{
 int i, ic, k, temp;
 unsigned rnd;
 static int32_t seed = 123;

 for(i=0;i<ROTORSZ;i++) {
  seed = 5*seed + buf[i%13];
  rnd = seed % 65521;
  k = ROTORSZ-1 - i;
  ic = (rnd&MASK)%(k+1);
  temp = deckary[k];
  deckary[k] = deckary[ic];
  deckary[ic] = temp;
 }
}
