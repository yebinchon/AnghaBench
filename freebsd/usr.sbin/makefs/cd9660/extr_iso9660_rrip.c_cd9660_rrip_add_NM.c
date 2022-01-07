
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* version; int* length; } ;
struct TYPE_8__ {TYPE_1__ h; int altname; int * flags; } ;
struct TYPE_9__ {TYPE_2__ NM; } ;
struct TYPE_10__ {TYPE_3__ rr_entry; } ;
struct ISO_SUSP_ATTRIBUTES {TYPE_4__ attr; } ;
struct TYPE_11__ {int head; } ;
typedef TYPE_5__ cd9660node ;


 int RRIP_NM_FLAGS_CONTINUE ;
 int RRIP_NM_FLAGS_NONE ;
 int SUSP_ENTRY_RRIP_NM ;
 int SUSP_LOC_ENTRY ;
 int SUSP_TYPE_RRIP ;
 int TAILQ_INSERT_TAIL (int *,struct ISO_SUSP_ATTRIBUTES*,int ) ;
 struct ISO_SUSP_ATTRIBUTES* cd9660node_susp_create_node (int ,int ,char*,int ) ;
 int memcpy (int ,char const*,int) ;
 int rr_ll ;
 int strlen (char const*) ;

void
cd9660_rrip_add_NM(cd9660node *node, const char *name)
{
 int working,len;
 const char *p;
 struct ISO_SUSP_ATTRIBUTES *r;






 p = name;
 working = 1;
 while (working) {
  r = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
      SUSP_ENTRY_RRIP_NM, "NM", SUSP_LOC_ENTRY);
  r->attr.rr_entry.NM.h.version[0] = 1;
  r->attr.rr_entry.NM.flags[0] = RRIP_NM_FLAGS_NONE;
  len = strlen(p);

  if (len > 249) {
   len = 249;
   r->attr.rr_entry.NM.flags[0] = RRIP_NM_FLAGS_CONTINUE;
  } else {
   working = 0;
  }
  memcpy(r->attr.rr_entry.NM.altname, p, len);
  r->attr.rr_entry.NM.h.length[0] = 5 + len;

  TAILQ_INSERT_TAIL(&node->head, r, rr_ll);

  p += len;
 }
}
