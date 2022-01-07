
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdtab {int lauth; } ;


 int LOCAL_CX ;
 int LOCAL_CX_OPT ;

__attribute__((used)) static const char *
showcx(struct cmdtab const *cmd)
{
  if (cmd->lauth & LOCAL_CX)
    return "(c)";
  else if (cmd->lauth & LOCAL_CX_OPT)
    return "(o)";

  return "";
}
