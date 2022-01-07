
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_info {int chip; } ;


 struct fw_info* fw_info ;
 int nitems (struct fw_info*) ;

__attribute__((used)) static struct fw_info *
find_fw_info(int chip)
{
 int i;

 for (i = 0; i < nitems(fw_info); i++) {
  if (fw_info[i].chip == chip)
   return (&fw_info[i]);
 }
 return (((void*)0));
}
