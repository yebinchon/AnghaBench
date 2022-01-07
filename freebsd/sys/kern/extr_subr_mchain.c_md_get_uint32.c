
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdchain {int dummy; } ;
typedef int caddr_t ;


 int MB_MINLINE ;
 int md_get_mem (struct mdchain*,int ,int,int ) ;

int
md_get_uint32(struct mdchain *mdp, uint32_t *x)
{
 return (md_get_mem(mdp, (caddr_t)x, 4, MB_MINLINE));
}
