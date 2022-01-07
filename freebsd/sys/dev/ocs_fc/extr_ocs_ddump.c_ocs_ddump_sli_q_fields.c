
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * qpage_count; int * max_qentries; int * max_qcount; } ;
struct TYPE_5__ {TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;
typedef size_t sli4_qtype_e ;
typedef int ocs_textbuf_t ;







 int ocs_ddump_endsection (int *,char*,size_t) ;
 int ocs_ddump_section (int *,char*,size_t) ;
 int ocs_ddump_value (int *,char*,char*,int ) ;

__attribute__((used)) static void
ocs_ddump_sli_q_fields(ocs_textbuf_t *textbuf, sli4_t *sli4, sli4_qtype_e qtype)
{
 char * q_desc;

 switch(qtype) {
 case 131: q_desc = "EQ"; break;
 case 132: q_desc = "CQ"; break;
 case 130: q_desc = "MQ"; break;
 case 128: q_desc = "WQ"; break;
 case 129: q_desc = "RQ"; break;
 default: q_desc = "unknown"; break;
 }

 ocs_ddump_section(textbuf, q_desc, qtype);

 ocs_ddump_value(textbuf, "max_qcount", "%d", sli4->config.max_qcount[qtype]);
 ocs_ddump_value(textbuf, "max_qentries", "%d", sli4->config.max_qentries[qtype]);
 ocs_ddump_value(textbuf, "qpage_count", "%d", sli4->config.qpage_count[qtype]);
 ocs_ddump_endsection(textbuf, q_desc, qtype);
}
