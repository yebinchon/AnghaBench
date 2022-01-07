
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* devlist; int ndev; } ;
struct physical {TYPE_1__ cfg; } ;


 scalar_t__ strlen (int ) ;
 int strncpy (int ,char const* const,int) ;

void
physical_SetDeviceList(struct physical *p, int argc, const char *const *argv)
{
  unsigned pos;
  int f;

  p->cfg.devlist[sizeof p->cfg.devlist - 1] = '\0';
  for (f = 0, pos = 0; f < argc && pos < sizeof p->cfg.devlist - 1; f++) {
    if (pos)
      p->cfg.devlist[pos++] = '\0';
    strncpy(p->cfg.devlist + pos, argv[f], sizeof p->cfg.devlist - pos - 1);
    pos += strlen(p->cfg.devlist + pos);
  }
  p->cfg.ndev = f;
}
