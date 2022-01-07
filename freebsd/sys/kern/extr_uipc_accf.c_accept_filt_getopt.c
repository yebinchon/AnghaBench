
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt {int dummy; } ;
struct socket {int so_options; int * sol_accept_filter_str; TYPE_1__* sol_accept_filter; } ;
struct accept_filter_arg {int af_arg; int af_name; } ;
struct TYPE_2__ {int * accf_name; } ;


 int EINVAL ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SO_ACCEPTCONN ;
 int free (struct accept_filter_arg*,int ) ;
 struct accept_filter_arg* malloc (int,int ,int) ;
 int sooptcopyout (struct sockopt*,struct accept_filter_arg*,int) ;
 int strcpy (int ,int *) ;

int
accept_filt_getopt(struct socket *so, struct sockopt *sopt)
{
 struct accept_filter_arg *afap;
 int error;

 error = 0;
 afap = malloc(sizeof(*afap), M_TEMP, M_WAITOK | M_ZERO);
 SOCK_LOCK(so);
 if ((so->so_options & SO_ACCEPTCONN) == 0) {
  error = EINVAL;
  goto out;
 }
 if (so->sol_accept_filter == ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 strcpy(afap->af_name, so->sol_accept_filter->accf_name);
 if (so->sol_accept_filter_str != ((void*)0))
  strcpy(afap->af_arg, so->sol_accept_filter_str);
out:
 SOCK_UNLOCK(so);
 if (error == 0)
  error = sooptcopyout(sopt, afap, sizeof(*afap));
 free(afap, M_TEMP);
 return (error);
}
