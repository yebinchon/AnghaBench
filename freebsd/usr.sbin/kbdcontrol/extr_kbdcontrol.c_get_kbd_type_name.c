
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name_table ;






__attribute__((used)) static const char *
get_kbd_type_name(int type)
{
 static struct {
  int type;
  const char *name;
 } name_table[] = {
  { 129, "AT 84" },
  { 130, "AT 101/102" },
  { 128, "generic" },
 };
 unsigned int i;

 for (i = 0; i < sizeof(name_table)/sizeof(name_table[0]); ++i) {
  if (type == name_table[i].type)
   return name_table[i].name;
 }
 return "unknown";
}
