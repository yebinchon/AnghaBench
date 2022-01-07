
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct sockopt {int sopt_level; int sopt_name; int* sopt_val; int sopt_valsize; } ;
struct socket {int so_vnet; } ;
typedef int sopt ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int bzero (struct sockopt*,int) ;
 int sosetopt (struct socket*,struct sockopt*) ;

__attribute__((used)) static int
nb_setsockopt_int(struct socket *so, int level, int name, int val)
{
 struct sockopt sopt;
 int error;

 bzero(&sopt, sizeof(sopt));
 sopt.sopt_level = level;
 sopt.sopt_name = name;
 sopt.sopt_val = &val;
 sopt.sopt_valsize = sizeof(val);
 CURVNET_SET(so->so_vnet);
 error = sosetopt(so, &sopt);
 CURVNET_RESTORE();
 return error;
}
