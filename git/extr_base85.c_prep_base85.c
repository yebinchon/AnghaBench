
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* de85 ;
 int* en85 ;

__attribute__((used)) static void prep_base85(void)
{
 int i;
 if (de85['Z'])
  return;
 for (i = 0; i < ARRAY_SIZE(en85); i++) {
  int ch = en85[i];
  de85[ch] = i + 1;
 }
}
