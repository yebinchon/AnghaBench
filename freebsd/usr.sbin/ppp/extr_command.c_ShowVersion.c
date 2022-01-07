
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int prompt; } ;


 int Version ;
 int prompt_Printf (int ,char*,int ) ;

__attribute__((used)) static int
ShowVersion(struct cmdargs const *arg)
{
  prompt_Printf(arg->prompt, "PPP Version %s\n", Version);
  return 0;
}
