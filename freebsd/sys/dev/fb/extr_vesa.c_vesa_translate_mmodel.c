
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;





 int V_INFO_MM_OTHER ;
__attribute__((used)) static int
vesa_translate_mmodel(u_int8_t vmodel)
{
 static struct {
  u_int8_t vmodel;
  int mmodel;
 } mtable[] = {
  { 128, 134 },
  { 133, 139 },
  { 130, 137 },
  { 131, 135 },
  { 129, 136 },
  { 132, 138 },
 };
 int i;

 for (i = 0; mtable[i].mmodel >= 0; ++i) {
  if (mtable[i].vmodel == vmodel)
   return (mtable[i].mmodel);
 }
 return (V_INFO_MM_OTHER);
}
