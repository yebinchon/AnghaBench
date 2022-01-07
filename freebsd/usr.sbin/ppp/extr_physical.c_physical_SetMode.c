
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct physical {int type; TYPE_1__ link; } ;


 int LogWARN ;
 int PHYS_BACKGROUND ;
 int PHYS_DEDICATED ;
 int PHYS_DIRECT ;
 int log_Printf (int ,char*,int ,int ,int ) ;
 int mode2Nam (int) ;

int
physical_SetMode(struct physical *p, int mode)
{
  if ((p->type & (PHYS_DIRECT|PHYS_DEDICATED) ||
       mode & (PHYS_DIRECT|PHYS_DEDICATED)) &&
      (!(p->type & PHYS_DIRECT) || !(mode & PHYS_BACKGROUND))) {

    log_Printf(LogWARN, "%s: Cannot change mode %s to %s\n", p->link.name,
               mode2Nam(p->type), mode2Nam(mode));
    return 0;
  }
  p->type = mode;
  return 1;
}
