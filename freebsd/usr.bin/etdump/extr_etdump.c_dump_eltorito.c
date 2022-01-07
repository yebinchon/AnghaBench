
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct outputter {int (* output_entry ) (int *,char const*,int *,int ,int) ;int (* output_image ) (int *,char const*,TYPE_1__*) ;} ;
typedef int daddr_t ;
struct TYPE_3__ {scalar_t__* boot_record_indicator; int boot_catalog_pointer; int boot_system_identifier; int identifier; } ;
typedef TYPE_1__ boot_volume_descriptor ;
typedef int boot_catalog_section_entry ;
typedef int FILE ;


 size_t ET_BOOT_ENTRY_SIZE ;
 int ET_ID ;
 scalar_t__ ET_SECTION_HEADER_LAST ;
 scalar_t__ ET_SECTION_HEADER_MORE ;
 int ISO_DEFAULT_BLOCK_SIZE ;
 scalar_t__ ISO_VOLUME_DESCRIPTOR_BOOT ;
 int ISO_VOLUME_DESCRIPTOR_STANDARD_ID ;
 int boot_catalog_valid (char*) ;
 int dump_section (char*,size_t,int *,char const*,struct outputter*) ;
 int err (int,char*) ;
 int isonum_731 (int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ read_sector (int *,int,char*) ;
 int stub1 (int *,char const*,TYPE_1__*) ;
 int stub2 (int *,char const*,int *,int ,int) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
dump_eltorito(FILE *iso, const char *filename, FILE *outfile,
    struct outputter *outputter)
{
 char buffer[ISO_DEFAULT_BLOCK_SIZE], *entry;
 boot_volume_descriptor *bvd;
 daddr_t boot_catalog;
 size_t offset;
 int entry_count;

 if (read_sector(iso, 17, buffer) != 0)
  err(1, "failed to read from image");

 bvd = (boot_volume_descriptor *)buffer;
 if (memcmp(bvd->identifier, ISO_VOLUME_DESCRIPTOR_STANDARD_ID, 5) != 0)
  warnx("%s: not a valid ISO", filename);
 if (bvd->boot_record_indicator[0] != ISO_VOLUME_DESCRIPTOR_BOOT)
  warnx("%s: not an El Torito bootable ISO", filename);
 if (memcmp(bvd->boot_system_identifier, ET_ID, 23) != 0)
  warnx("%s: not an El Torito bootable ISO", filename);

 boot_catalog = isonum_731(bvd->boot_catalog_pointer);

 if (read_sector(iso, boot_catalog, buffer) != 0)
  err(1, "failed to read from image");

 entry = buffer;
 offset = 0;

 if (!boot_catalog_valid(entry))
  warnx("%s: boot catalog checksum is invalid", filename);

 if (outputter->output_image != ((void*)0))
  outputter->output_image(outfile, filename, bvd);

 offset += ET_BOOT_ENTRY_SIZE;
 entry = &buffer[offset];
 if (outputter->output_entry != ((void*)0))
  outputter->output_entry(outfile, filename,
      (boot_catalog_section_entry *)entry, 0, 1);

 offset += ET_BOOT_ENTRY_SIZE;

 while (offset < ISO_DEFAULT_BLOCK_SIZE) {
  entry = &buffer[offset];

  if ((uint8_t)entry[0] != ET_SECTION_HEADER_MORE &&
      (uint8_t)entry[0] != ET_SECTION_HEADER_LAST)
   break;

  entry_count = dump_section(buffer, offset, outfile, filename,
      outputter);

  offset += entry_count * ET_BOOT_ENTRY_SIZE;
 }
}
