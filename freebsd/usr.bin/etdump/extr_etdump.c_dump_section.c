
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct outputter {int (* output_entry ) (int *,char const*,int *,int ,int) ;int (* output_section ) (int *,char const*,TYPE_1__*) ;} ;
struct TYPE_3__ {scalar_t__* num_section_entries; int * platform_id; } ;
typedef TYPE_1__ boot_catalog_section_header ;
typedef int boot_catalog_section_entry ;
typedef int FILE ;


 int ET_BOOT_ENTRY_SIZE ;
 int stub1 (int *,char const*,TYPE_1__*) ;
 int stub2 (int *,char const*,int *,int ,int) ;

__attribute__((used)) static int
dump_section(char *buffer, size_t offset, FILE *outfile, const char *filename,
    struct outputter *outputter)
{
 boot_catalog_section_header *sh;
 u_char platform_id;
 int i;
 size_t entry_offset;
 boot_catalog_section_entry *entry;

 sh = (boot_catalog_section_header *)&buffer[offset];
 if (outputter->output_section != ((void*)0)) {
  outputter->output_section(outfile, filename, sh);
 }

 platform_id = sh->platform_id[0];

 if (outputter->output_entry != ((void*)0)) {
  for (i = 1; i <= (int)sh->num_section_entries[0]; i++) {
   entry_offset = offset + i * ET_BOOT_ENTRY_SIZE;
   entry =
       (boot_catalog_section_entry *)&buffer[entry_offset];
   outputter->output_entry(outfile, filename, entry,
       platform_id, 0);
  }
 }

 return (1 + (int)sh->num_section_entries[0]);
}
