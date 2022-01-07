
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mdchain {int dummy; } ;


 int be16toh (int ) ;
 int md_get_uint16 (struct mdchain*,int *) ;

int
md_get_uint16be(struct mdchain *mdp, uint16_t *x)
{
 uint16_t v;
 int error = md_get_uint16(mdp, &v);

 if (x != ((void*)0))
  *x = be16toh(v);
 return (error);
}
