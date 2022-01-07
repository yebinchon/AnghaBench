
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {unsigned int state; int name; } ;


 int LogERROR ;
 int LogPHASE ;
 int datalink_State (struct datalink*) ;
 int log_Printf (int ,char*,int ,unsigned int,...) ;
 int * states ;

__attribute__((used)) static void
datalink_NewState(struct datalink *dl, unsigned state)
{
  if (state != dl->state) {
    if (state < sizeof states / sizeof states[0]) {
      log_Printf(LogPHASE, "%s: %s -> %s\n", dl->name, datalink_State(dl),
                 states[state]);
      dl->state = state;
    } else
      log_Printf(LogERROR, "%s: Can't enter state %d !\n", dl->name, state);
  }
}
