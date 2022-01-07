
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct named_object {int name; int kidx; int etlv; } ;
struct TYPE_4__ {int length; int type; } ;
struct TYPE_5__ {int name; int idx; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;


 int strlcpy (int ,int ,int) ;

void
ipfw_export_obj_ntlv(struct named_object *no, ipfw_obj_ntlv *ntlv)
{

 ntlv->head.type = no->etlv;
 ntlv->head.length = sizeof(*ntlv);
 ntlv->idx = no->kidx;
 strlcpy(ntlv->name, no->name, sizeof(ntlv->name));
}
