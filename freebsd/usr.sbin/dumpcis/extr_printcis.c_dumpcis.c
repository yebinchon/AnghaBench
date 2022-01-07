
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tuple_list {struct tuple* tuples; struct tuple_list* next; } ;
struct tuple {int code; int length; int* data; struct tuple* next; } ;
 int dump_bar (int*,int) ;
 int dump_cis_config (struct tuple*) ;
 int dump_config_map (struct tuple*) ;
 int dump_device_desc (int*,int,char*) ;
 int dump_device_geo (int*,int) ;
 int dump_disk_ext (int*,int) ;
 int dump_func_id (int*) ;
 int dump_info_v1 (int*,int) ;
 int dump_info_v2 (int*,int) ;
 int dump_longlink_mfc (int*,int) ;
 int dump_network_ext (int*,int) ;
 int dump_org (int*,int) ;
 int dump_other_cond (int*,int) ;
 int dump_serial_ext (int*,int) ;
 int printf (char*,...) ;
 int tpl16 (int*) ;
 int tpl32 (int*) ;
 char* tuple_name (int) ;

void
dumpcis(struct tuple_list *tlist)
{
 struct tuple *tp;
 struct tuple_list *tl;
 int count = 0, sz, ad, i;
 u_char *p;
 int func = 0;

 for (tl = tlist; tl; tl = tl->next)
  for (tp = tl->tuples; tp; tp = tp->next) {
   printf("Tuple #%d, code = 0x%x (%s), length = %d\n",
       ++count, tp->code, tuple_name(tp->code), tp->length);
   p = tp->data;
   sz = tp->length;
   ad = 0;
   while (sz > 0) {
    printf("    %03x: ", ad);
    for (i = 0; i < ((sz < 16) ? sz : 16); i++)
     printf(" %02x", p[i]);
    printf("\n");
    sz -= 16;
    p += 16;
    ad += 16;
   }
   switch (tp->code) {
   default:
    break;
   case 130:
    dump_device_desc(tp->data, tp->length, "Common");
    break;
   case 145:
    dump_config_map(tp);
    break;
   case 147:
    dump_cis_config(tp);
    break;
   case 133:
    dump_longlink_mfc(tp->data, tp->length);
    break;
   case 150:
    dump_bar(tp->data, tp->length);
    break;
   case 149:
    printf("\tChecksum from offset %d, length %d, value is 0x%x\n",
           tpl16(tp->data),
           tpl16(tp->data + 2),
           tp->data[4]);
    break;
   case 135:
    printf("\tLong link to attribute memory, address 0x%x\n",
           tpl32(tp->data));
    break;
   case 134:
    printf("\tLong link to common memory, address 0x%x\n",
           tpl32(tp->data));
    break;
   case 138:
    dump_info_v1(tp->data, tp->length);
    break;
   case 151:
    break;
   case 131:
    dump_device_desc(tp->data, tp->length, "Attribute");
    break;
   case 136:
   case 137:
    break;
   case 146:
    dump_config_map(tp);
    break;
   case 148:
    dump_cis_config(tp);
    break;
   case 141:
   case 142:
    dump_other_cond(tp->data, tp->length);
    break;
   case 144:
   case 143:
    dump_device_geo(tp->data, tp->length);
    break;
   case 132:
    printf("\tPCMCIA ID = 0x%x, OEM ID = 0x%x\n",
           tpl16(tp->data),
           tpl16(tp->data + 2));
    break;
   case 139:
    func = tp->data[0];
    dump_func_id(tp->data);
    break;
   case 140:
    switch (func) {
    case 2:
     dump_serial_ext(tp->data, tp->length);
     break;
    case 4:
     dump_disk_ext(tp->data, tp->length);
     break;
    case 6:
     dump_network_ext(tp->data, tp->length);
     break;
    }
    break;
   case 128:
    dump_info_v2(tp->data, tp->length);
    break;
   case 129:
    dump_org(tp->data, tp->length);
    break;
   }
  }
}
