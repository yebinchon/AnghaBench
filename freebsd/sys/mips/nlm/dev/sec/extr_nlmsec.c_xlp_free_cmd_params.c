
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_sec_command {struct xlp_sec_command* hashdest; struct xlp_sec_command* iv; struct xlp_sec_command* paramp; struct xlp_sec_command* ctrlp; } ;


 int M_DEVBUF ;
 int free (struct xlp_sec_command*,int ) ;

__attribute__((used)) static void
xlp_free_cmd_params(struct xlp_sec_command *cmd)
{
 if (cmd->ctrlp != ((void*)0))
  free(cmd->ctrlp, M_DEVBUF);
 if (cmd->paramp != ((void*)0))
  free(cmd->paramp, M_DEVBUF);
 if (cmd->iv != ((void*)0))
  free(cmd->iv, M_DEVBUF);
 if (cmd->hashdest != ((void*)0))
  free(cmd->hashdest, M_DEVBUF);
 if (cmd != ((void*)0))
  free(cmd, M_DEVBUF);
 return;
}
