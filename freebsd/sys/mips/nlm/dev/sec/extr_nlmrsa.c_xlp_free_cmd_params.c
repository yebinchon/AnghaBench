
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_rsa_command {struct xlp_rsa_command* rsasrc; int * krp; } ;
typedef int nlm_rsa_ucode_data ;


 int M_DEVBUF ;
 int contigfree (struct xlp_rsa_command*,int,int ) ;
 int free (struct xlp_rsa_command*,int ) ;

__attribute__((used)) static void
xlp_free_cmd_params(struct xlp_rsa_command *cmd)
{

 if (cmd == ((void*)0))
  return;
 if (cmd->rsasrc != ((void*)0)) {
  if (cmd->krp == ((void*)0))
   contigfree(cmd->rsasrc, sizeof(nlm_rsa_ucode_data),
       M_DEVBUF);
  else
   free(cmd->rsasrc, M_DEVBUF);
 }
 free(cmd, M_DEVBUF);
}
