
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int sopt_level; int sopt_name; size_t sopt_valsize; int * sopt_td; void* sopt_val; int sopt_dir; } ;
struct socket {int dummy; } ;


 int SOPT_SET ;
 int sosetopt (struct socket*,struct sockopt*) ;

int
so_setsockopt(struct socket *so, int level, int optname, void *optval,
    size_t optlen)
{
 struct sockopt sopt;

 sopt.sopt_level = level;
 sopt.sopt_name = optname;
 sopt.sopt_dir = SOPT_SET;
 sopt.sopt_val = optval;
 sopt.sopt_valsize = optlen;
 sopt.sopt_td = ((void*)0);
 return (sosetopt(so, &sopt));
}
