
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttyent {int ty_name; } ;
struct TYPE_2__ {int base; } ;
struct physical {TYPE_1__ name; } ;


 int endttyent () ;
 struct ttyent* getttyent () ;
 int setttyent () ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
tty_Slot(struct physical *p)
{
  struct ttyent *ttyp;
  int slot;

  setttyent();
  for (slot = 1; (ttyp = getttyent()); ++slot)
    if (!strcmp(ttyp->ty_name, p->name.base)) {
      endttyent();
      return slot;
    }

  endttyent();
  return -1;
}
