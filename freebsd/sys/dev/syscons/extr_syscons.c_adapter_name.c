
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int va_type; int va_flags; } ;
typedef TYPE_2__ video_adapter_t ;
struct TYPE_4__ {char* member_0; char* member_1; } ;
 int V_ADP_COLOR ;

__attribute__((used)) static char
*adapter_name(video_adapter_t *adp)
{
    static struct {
 int type;
 char *name[2];
    } names[] = {
 { 130, { "MDA", "MDA" } },
 { 131, { "Hercules", "Hercules" } },
 { 133, { "CGA", "CGA" } },
 { 132, { "EGA", "EGA (mono)" } },
 { 128, { "VGA", "VGA (mono)" } },
 { 129, { "TGA", "TGA" } },
 { -1, { "Unknown", "Unknown" } },
    };
    int i;

    for (i = 0; names[i].type != -1; ++i)
 if (names[i].type == adp->va_type)
     break;
    return names[i].name[(adp->va_flags & V_ADP_COLOR) ? 0 : 1];
}
