
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_port {int dummy; } ;
struct TYPE_2__ {int func; scalar_t__ flag; } ;


 TYPE_1__* lagg_pflags ;
 int lagg_setflag (struct lagg_port*,scalar_t__,int,int ) ;

__attribute__((used)) static int
lagg_setflags(struct lagg_port *lp, int status)
{
 int error, i;

 for (i = 0; lagg_pflags[i].flag; i++) {
  error = lagg_setflag(lp, lagg_pflags[i].flag,
      status, lagg_pflags[i].func);
  if (error)
   return (error);
 }
 return (0);
}
