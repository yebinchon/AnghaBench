
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {scalar_t__ se_policy; scalar_t__* se_argv; scalar_t__ se_pids; scalar_t__ se_server; scalar_t__ se_class; scalar_t__ se_group; scalar_t__ se_user; scalar_t__ se_proto; scalar_t__ se_service; } ;


 int MAXARGV ;
 int free (scalar_t__) ;
 int free_connlist (struct servtab*) ;

__attribute__((used)) static void
freeconfig(struct servtab *cp)
{
 int i;

 if (cp->se_service)
  free(cp->se_service);
 if (cp->se_proto)
  free(cp->se_proto);
 if (cp->se_user)
  free(cp->se_user);
 if (cp->se_group)
  free(cp->se_group);




 if (cp->se_server)
  free(cp->se_server);
 if (cp->se_pids)
  free(cp->se_pids);
 for (i = 0; i < MAXARGV; i++)
  if (cp->se_argv[i])
   free(cp->se_argv[i]);
 free_connlist(cp);




}
