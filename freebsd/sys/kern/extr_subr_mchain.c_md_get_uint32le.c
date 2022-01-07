
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdchain {int dummy; } ;


 int le32toh (int ) ;
 int md_get_uint32 (struct mdchain*,int *) ;

int
md_get_uint32le(struct mdchain *mdp, uint32_t *x)
{
 uint32_t v;
 int error;

 error = md_get_uint32(mdp, &v);
 if (x != ((void*)0))
  *x = le32toh(v);
 return (error);
}
