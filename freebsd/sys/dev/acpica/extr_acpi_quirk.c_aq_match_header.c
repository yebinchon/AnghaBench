
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rev; int tid; } ;
struct TYPE_5__ {int op; int id; } ;
struct acpi_q_rule {int val; TYPE_2__ y; TYPE_1__ x; } ;
struct TYPE_7__ {int AslCompilerRevision; int OemRevision; int AslCompilerId; int OemTableId; int OemId; } ;
typedef TYPE_3__ ACPI_TABLE_HEADER ;




 int FALSE ;


 int TRUE ;
 int aq_revcmp (int ,int ,int ) ;
 int aq_strcmp (int ,int ) ;

__attribute__((used)) static int
aq_match_header(ACPI_TABLE_HEADER *hdr, const struct acpi_q_rule *match)
{
    int result;

    result = FALSE;
    switch (match->val) {
    case 129:
 if (aq_strcmp(hdr->OemId, match->x.id) &&
     aq_strcmp(hdr->OemTableId, match->y.tid))
     result = TRUE;
 break;
    case 131:
 if (aq_strcmp(hdr->AslCompilerId, match->x.id))
     result = TRUE;
 break;
    case 128:
 if (aq_revcmp(hdr->OemRevision, match->x.op, match->y.rev))
     result = TRUE;
 break;
    case 130:
 if (aq_revcmp(hdr->AslCompilerRevision, match->x.op, match->y.rev))
     result = TRUE;
 break;
    }

    return (result);
}
