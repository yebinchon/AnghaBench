
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdchain {int dummy; } ;
typedef int int64_t ;
typedef int caddr_t ;


 int MB_MINLINE ;
 int md_get_mem (struct mdchain*,int ,int,int ) ;

int
md_get_int64(struct mdchain *mdp, int64_t *x)
{
 return (md_get_mem(mdp, (caddr_t)x, 8, MB_MINLINE));
}
