
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mdchain {int dummy; } ;


 int MB_MINLINE ;
 int md_get_mem (struct mdchain*,int *,int,int ) ;

int
md_get_uint8(struct mdchain *mdp, uint8_t *x)
{
 return (md_get_mem(mdp, x, 1, MB_MINLINE));
}
