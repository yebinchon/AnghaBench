
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct smbios_structure_header {int length; } ;
typedef int (* smbios_callback_t ) (struct smbios_structure_header*,void*) ;



__attribute__((used)) static void
smbios_walk_table(uint8_t *p, int entries, smbios_callback_t cb, void *arg)
{
 struct smbios_structure_header *s;

 while (entries--) {
  s = (struct smbios_structure_header *)p;
  cb(s, arg);





  p += s->length;
  while (!(p[0] == 0 && p[1] == 0))
   p++;





  p += 2;
 }
}
