
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int dummy; } ;
struct uath_cmd {int * buf; } ;


 int UATH_CMD_LIST_COUNT ;

__attribute__((used)) static void
uath_free_cmd_list(struct uath_softc *sc, struct uath_cmd cmds[])
{
 int i;

 for (i = 0; i != UATH_CMD_LIST_COUNT; i++)
  cmds[i].buf = ((void*)0);
}
