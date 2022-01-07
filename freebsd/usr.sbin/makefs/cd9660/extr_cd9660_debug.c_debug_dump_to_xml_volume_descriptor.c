
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iso_primary_descriptor {scalar_t__ file_structure_version; scalar_t__ effective_date; scalar_t__ expiration_date; scalar_t__ modification_date; scalar_t__ creation_date; scalar_t__ bibliographic_file_id; scalar_t__ abstract_file_id; scalar_t__ copyright_file_id; scalar_t__ application_id; scalar_t__ preparer_id; scalar_t__ publisher_id; scalar_t__ volume_set_id; scalar_t__ root_directory_record; int opt_type_m_path_table; int type_m_path_table; int opt_type_l_path_table; int type_l_path_table; int path_table_size; int logical_block_size; int volume_sequence_number; int volume_set_size; int volume_space_size; scalar_t__ volume_id; scalar_t__ system_id; int version; scalar_t__ id; int type; } ;


 int ISODCL (int,int) ;
 int debug_dump_directory_record_9_1 (int *) ;
 int debug_dump_integer (char*,int ,int) ;
 int debug_dump_to_xml_padded_hex_output (char*,int *,int ) ;
 int printf (char*,...) ;

void
debug_dump_to_xml_volume_descriptor(unsigned char* buf, int sector)
{
 printf("<volumedescriptor sector=\"%i\">\n", sector);
 printf("<vdtype>");
 switch(buf[0]) {
 case 0:
  printf("boot");
  break;

 case 1:
  printf("primary");
  break;

 case 2:
  printf("supplementary");
  break;

 case 3:
  printf("volume partition descriptor");
  break;

 case 255:
  printf("terminator");
  break;
 }

 printf("</vdtype>\n");
 switch(buf[0]) {
 case 1:
  debug_dump_integer("type",
      ((struct iso_primary_descriptor*)buf)->type, 711);
  debug_dump_to_xml_padded_hex_output("id",
      (u_char *)((struct iso_primary_descriptor*) buf)->id,
      ISODCL ( 2, 6));
  debug_dump_integer("version",
      ((struct iso_primary_descriptor*)buf)->version,
       711);
  debug_dump_to_xml_padded_hex_output("system_id",
      (u_char *)((struct iso_primary_descriptor*)buf)->system_id,
      ISODCL(9,40));
  debug_dump_to_xml_padded_hex_output("volume_id",
      (u_char *)((struct iso_primary_descriptor*)buf)->volume_id,
      ISODCL(41,72));
  debug_dump_integer("volume_space_size",
      ((struct iso_primary_descriptor*)buf)->volume_space_size,
      733);
  debug_dump_integer("volume_set_size",
      ((struct iso_primary_descriptor*)buf)->volume_set_size,
       733);
  debug_dump_integer("volume_sequence_number",
      ((struct iso_primary_descriptor*)buf)->volume_sequence_number,
      723);
  debug_dump_integer("logical_block_size",
      ((struct iso_primary_descriptor*)buf)->logical_block_size,
       723);
  debug_dump_integer("path_table_size",
      ((struct iso_primary_descriptor*)buf)->path_table_size,
       733);
  debug_dump_integer("type_l_path_table",
      ((struct iso_primary_descriptor*)buf)->type_l_path_table,
      731);
  debug_dump_integer("opt_type_l_path_table",
      ((struct iso_primary_descriptor*)buf)->opt_type_l_path_table,
      731);
  debug_dump_integer("type_m_path_table",
      ((struct iso_primary_descriptor*)buf)->type_m_path_table,
      732);
  debug_dump_integer("opt_type_m_path_table",
   ((struct iso_primary_descriptor*)buf)->opt_type_m_path_table,732);
  debug_dump_directory_record_9_1(
      (u_char *)((struct iso_primary_descriptor*)buf)->root_directory_record);
  debug_dump_to_xml_padded_hex_output("volume_set_id",
      (u_char *)((struct iso_primary_descriptor*) buf)->volume_set_id,
      ISODCL (191, 318));
  debug_dump_to_xml_padded_hex_output("publisher_id",
      (u_char *)((struct iso_primary_descriptor*) buf)->publisher_id,
      ISODCL (319, 446));
  debug_dump_to_xml_padded_hex_output("preparer_id",
      (u_char *)((struct iso_primary_descriptor*) buf)->preparer_id,
      ISODCL (447, 574));
  debug_dump_to_xml_padded_hex_output("application_id",
      (u_char *)((struct iso_primary_descriptor*) buf)->application_id,
      ISODCL (575, 702));
  debug_dump_to_xml_padded_hex_output("copyright_file_id",
      (u_char *)((struct iso_primary_descriptor*) buf)->copyright_file_id,
      ISODCL (703, 739));
  debug_dump_to_xml_padded_hex_output("abstract_file_id",
      (u_char *)((struct iso_primary_descriptor*) buf)->abstract_file_id,
      ISODCL (740, 776));
  debug_dump_to_xml_padded_hex_output("bibliographic_file_id",
      (u_char *)((struct iso_primary_descriptor*) buf)->bibliographic_file_id,
      ISODCL (777, 813));

  debug_dump_to_xml_padded_hex_output("creation_date",
      (u_char *)((struct iso_primary_descriptor*) buf)->creation_date,
      ISODCL (814, 830));
  debug_dump_to_xml_padded_hex_output("modification_date",
      (u_char *)((struct iso_primary_descriptor*) buf)->modification_date,
      ISODCL (831, 847));
  debug_dump_to_xml_padded_hex_output("expiration_date",
      (u_char *)((struct iso_primary_descriptor*) buf)->expiration_date,
      ISODCL (848, 864));
  debug_dump_to_xml_padded_hex_output("effective_date",
      (u_char *)((struct iso_primary_descriptor*) buf)->effective_date,
      ISODCL (865, 881));

  debug_dump_to_xml_padded_hex_output("file_structure_version",
      (u_char *)((struct iso_primary_descriptor*) buf)->file_structure_version,
      ISODCL(882,882));
  break;
 }
 printf("</volumedescriptor>\n");
}
