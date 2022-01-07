
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_TEMP ;
 int bcopy (int *,int *,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int pnp_get_resource_info (int *,int) ;

__attribute__((used)) static int
pnp_read_bytes(int amount, u_char **resourcesp, int *spacep, int *lenp)
{
 u_char *resources = *resourcesp;
 u_char *newres;
 int space = *spacep;
 int len = *lenp;

 if (space == 0) {
  space = 1024;
  resources = malloc(space, M_TEMP, M_NOWAIT);
  if (!resources)
   return (ENOMEM);
 }

 if (len + amount > space) {
  int extra = 1024;
  while (len + amount > space + extra)
   extra += 1024;
  newres = malloc(space + extra, M_TEMP, M_NOWAIT);
  if (!newres) {

   return (ENOMEM);
  }
  bcopy(resources, newres, len);
  free(resources, M_TEMP);
  resources = newres;
  space += extra;
 }

 if (pnp_get_resource_info(resources + len, amount) != amount)
  return (EINVAL);
 len += amount;

 *resourcesp = resources;
 *spacep = space;
 *lenp = len;

 return (0);
}
