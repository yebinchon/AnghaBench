
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tid_info {int tlen; TYPE_2__* tlvs; int uidx; int set; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ head; int idx; int set; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;


 int memset (struct tid_info*,int ,int) ;

__attribute__((used)) static void
ntlv_to_ti(ipfw_obj_ntlv *ntlv, struct tid_info *ti)
{

 memset(ti, 0, sizeof(struct tid_info));
 ti->set = ntlv->set;
 ti->uidx = ntlv->idx;
 ti->tlvs = ntlv;
 ti->tlen = ntlv->head.length;
}
