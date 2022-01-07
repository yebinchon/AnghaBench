
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYLIMIT ;
 int PTW_KEYHSBYTES ;
 int PTW_computeKey (int ,unsigned char*,int,int) ;
 int ptw ;
 int save_key (unsigned char*,int) ;

int do_crack(void)
{
 unsigned char key[PTW_KEYHSBYTES];

 if(PTW_computeKey(ptw, key, 13, KEYLIMIT) == 1) {
  save_key(key, 13);
  return 1;
 }
 if(PTW_computeKey(ptw, key, 5, KEYLIMIT/10) == 1) {
  save_key(key, 5);
  return 1;
 }

 return 0;
}
