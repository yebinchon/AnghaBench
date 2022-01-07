
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iso_primary_descriptor {scalar_t__ type_m_path_table; scalar_t__ path_table_size; scalar_t__ type_l_path_table; } ;
struct _boot_volume_descriptor {scalar_t__ type_m_path_table; scalar_t__ path_table_size; scalar_t__ type_l_path_table; } ;
typedef int off_t ;
typedef int FILE ;


 int CD9660_SECTOR_SIZE ;
 int SEEK_SET ;
 int debug_dump_to_xml_path_table (int *,int,int,int) ;
 int debug_dump_to_xml_volume_descriptor (unsigned char*,int) ;
 int debug_get_encoded_number (int *,int) ;
 int err (int,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int fseeko (int *,int,int ) ;
 int memcpy (struct iso_primary_descriptor*,unsigned char*,int) ;
 int printf (char*,...) ;

void
debug_dump_to_xml(FILE *fd)
{
 unsigned char buf[CD9660_SECTOR_SIZE];
 off_t sector;
 int t, t2;
 struct iso_primary_descriptor primaryVD;
 struct _boot_volume_descriptor bootVD;

 printf("<cd9660dump>\n");


 sector = 16;
 do {
  if (fseeko(fd, CD9660_SECTOR_SIZE * sector, SEEK_SET) == -1)
   err(1, "fseeko");
  fread(buf, 1, CD9660_SECTOR_SIZE, fd);
  t = (int)((unsigned char)buf[0]);
  switch (t) {
  case 0:
   memcpy(&bootVD, buf, CD9660_SECTOR_SIZE);
   break;
  case 1:
   memcpy(&primaryVD, buf, CD9660_SECTOR_SIZE);
   break;
  }
  debug_dump_to_xml_volume_descriptor(buf, sector);
  sector++;
 } while (t != 255);

 t = debug_get_encoded_number((u_char *)primaryVD.type_l_path_table,
     731);
 t2 = debug_get_encoded_number((u_char *)primaryVD.path_table_size, 733);
 printf("Path table 1 located at sector %i and is %i bytes long\n",
     t,t2);
 debug_dump_to_xml_path_table(fd, t, t2, 721);

 t = debug_get_encoded_number((u_char *)primaryVD.type_m_path_table,
     731);
 debug_dump_to_xml_path_table(fd, t, t2, 722);

 printf("</cd9660dump>\n");
}
