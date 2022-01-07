
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* length; int* extended_attribute_length; int name; int parent_number; } ;
typedef TYPE_1__ path_table_entry ;


 int debug_dump_to_xml_padded_hex_output (char*,int ,int) ;
 int debug_get_encoded_number (int ,int) ;
 int printf (char*,...) ;

void
debug_dump_to_xml_ptentry(path_table_entry *pttemp, int num, int mode)
{
 printf("<ptentry num=\"%i\">\n" ,num);
 printf("<length>%i</length>\n", pttemp->length[0]);
 printf("<extended_attribute_length>%i</extended_attribute_length>\n",
     pttemp->extended_attribute_length[0]);
 printf("<parent_number>%i</parent_number>\n",
     debug_get_encoded_number(pttemp->parent_number,mode));
 debug_dump_to_xml_padded_hex_output("name",
     pttemp->name, pttemp->length[0]);
 printf("</ptentry>\n");
}
