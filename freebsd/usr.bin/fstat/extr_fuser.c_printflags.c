
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct consumer {int uflags; int flags; } ;
struct TYPE_4__ {int flag; int ch; } ;
struct TYPE_3__ {int flag; int ch; } ;


 unsigned int NFFLAGS ;
 unsigned int NUFLAGS ;
 int assert (struct consumer*) ;
 TYPE_2__* fflags ;
 int fputc (int ,int ) ;
 int stderr ;
 TYPE_1__* uflags ;

__attribute__((used)) static void
printflags(struct consumer *cons)
{
 unsigned int i;

 assert(cons);
 for (i = 0; i < NUFLAGS; i++)
  if ((cons->uflags & uflags[i].flag) != 0)
   fputc(uflags[i].ch, stderr);
 for (i = 0; i < NFFLAGS; i++)
  if ((cons->flags & fflags[i].flag) != 0)
   fputc(fflags[i].ch, stderr);
}
