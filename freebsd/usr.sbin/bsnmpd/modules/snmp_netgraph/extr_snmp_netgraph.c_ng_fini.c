
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngtype {int dummy; } ;


 struct ngtype* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ngtype*,int ) ;
 int close (int ) ;
 int csock ;
 int * csock_fd ;
 int dsock ;
 int * dsock_fd ;
 int fd_deselect (int *) ;
 int free (struct ngtype*) ;
 int link ;
 int ngtype_list ;
 int or_unregister (int ) ;
 int reg_index ;
 struct ngtype* snmp_nodename ;

__attribute__((used)) static int
ng_fini(void)
{
 struct ngtype *t;

 while ((t = TAILQ_FIRST(&ngtype_list)) != ((void*)0)) {
  TAILQ_REMOVE(&ngtype_list, t, link);
  free(t);
 }

 if (csock_fd != ((void*)0))
  fd_deselect(csock_fd);
 (void)close(csock);

 if (dsock_fd != ((void*)0))
  fd_deselect(dsock_fd);
 (void)close(dsock);

 free(snmp_nodename);

 or_unregister(reg_index);

 return (0);
}
