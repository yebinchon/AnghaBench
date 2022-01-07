
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smbios_table_type4 {int socket; int cores; int threads; } ;
struct smbios_structure {int dummy; } ;


 int cores ;
 int smbios_generic_initializer (struct smbios_structure*,char const**,char*,char**,int *,int *) ;
 int sockets ;
 int sprintf (char*,char*,int) ;
 int threads ;

__attribute__((used)) static int
smbios_type4_initializer(struct smbios_structure *template_entry,
    const char **template_strings, char *curaddr, char **endaddr,
    uint16_t *n, uint16_t *size)
{
 int i;

 for (i = 0; i < sockets; i++) {
  struct smbios_table_type4 *type4;
  char *p;
  int nstrings, len;

  smbios_generic_initializer(template_entry, template_strings,
      curaddr, endaddr, n, size);
  type4 = (struct smbios_table_type4 *)curaddr;
  p = curaddr + sizeof (struct smbios_table_type4);
  nstrings = 0;
  while (p < *endaddr - 1) {
   if (*p++ == '\0')
    nstrings++;
  }
  len = sprintf(*endaddr - 1, "CPU #%d", i) + 1;
  *endaddr += len - 1;
  *(*endaddr) = '\0';
  (*endaddr)++;
  type4->socket = nstrings + 1;

  if (cores > 254)
   type4->cores = 0;
  else
   type4->cores = cores;

  if ((cores * threads) > 254)
   type4->threads = 0;
  else
   type4->threads = (cores * threads);
  curaddr = *endaddr;
 }

 return (0);
}
