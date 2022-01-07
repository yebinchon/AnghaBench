
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ PNP_RES_TYPE (int) ;
 int PNP_SRES_LEN (int) ;
 scalar_t__ PNP_SRES_NUM (int) ;
 scalar_t__ PNP_TAG_END ;
 int pnp_read_bytes (int,int**,int*,int*) ;

__attribute__((used)) static int
pnp_read_resources(u_char **resourcesp, int *spacep, int *lenp)
{
 u_char *resources = *resourcesp;
 int space = *spacep;
 int len = 0;
 int error, done;
 u_char tag;

 error = 0;
 done = 0;
 while (!done) {
  error = pnp_read_bytes(1, &resources, &space, &len);
  if (error)
   goto out;
  tag = resources[len-1];
  if (PNP_RES_TYPE(tag) == 0) {



   error = pnp_read_bytes(PNP_SRES_LEN(tag),
       &resources, &space, &len);
   if (error)
    goto out;
   if (PNP_SRES_NUM(tag) == PNP_TAG_END)
    done = 1;
  } else {



   error = pnp_read_bytes(2, &resources, &space, &len);
   if (error)
    goto out;
   error = pnp_read_bytes(resources[len-2]
       + (resources[len-1] << 8), &resources, &space,
       &len);
   if (error)
    goto out;
  }
 }

 out:
 *resourcesp = resources;
 *spacep = space;
 *lenp = len;
 return (error);
}
