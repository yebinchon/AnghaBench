
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct isa_config {int dummy; } ;
typedef int device_t ;


 int I16 (int*) ;
 int ISA_ADD_CONFIG (int ,int ,int,struct isa_config*) ;
 int MAXDEP ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ PNP_RES_TYPE (int) ;
 int PNP_SRES_LEN (int) ;
 int PNP_SRES_NUM (int) ;



 int bootverbose ;
 int bzero (struct isa_config*,int) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int free (struct isa_config*,int ) ;
 int isa_get_logicalid (int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int pnp_merge_resources (int ,struct isa_config*,struct isa_config*) ;
 int pnp_parse_dependant (int ,int*,int,struct isa_config*,int) ;
 scalar_t__ pnp_parse_desc (int ,int,int*,int,struct isa_config*,int) ;
 int pnp_printf (int ,char*,...) ;

void
pnp_parse_resources(device_t dev, u_char *resources, int len, int ldn)
{
 struct isa_config *configs;
 struct isa_config *config;
 device_t parent;
 int priorities[1 + MAXDEP];
 u_char *start;
 u_char *p;
 u_char tag;
 u_int32_t id;
 int ncfgs;
 int l;
 int i;

 parent = device_get_parent(dev);
 id = isa_get_logicalid(dev);

 configs = (struct isa_config *)malloc(sizeof(*configs)*(1 + MAXDEP),
           M_DEVBUF, M_NOWAIT | M_ZERO);
 if (configs == ((void*)0)) {
  device_printf(parent, "No memory to parse PNP data\n");
  return;
 }
 config = &configs[0];
 priorities[0] = 0;
 ncfgs = 1;

 p = resources;
 start = ((void*)0);
 while (len > 0) {
  tag = *p++;
  len--;
  if (PNP_RES_TYPE(tag) == 0) {

   l = PNP_SRES_LEN(tag);
   if (len < l) {
    len = 0;
    continue;
   }
   len -= l;

   switch (PNP_SRES_NUM(tag)) {

   case 128:
    if (start != ((void*)0)) {




     pnp_merge_resources(dev, &configs[0],
           config);
     pnp_parse_dependant(dev, start,
           p - start - 1,
           config, ldn);
    }
    start = p + l;
    if (ncfgs > MAXDEP) {
     device_printf(parent, "too many dependent configs (%d)\n", MAXDEP);
     len = 0;
     break;
    }
    config = &configs[ncfgs];




    if (l > 0)
     priorities[ncfgs] = p[0];
    else
     priorities[ncfgs] = 1;
    if (bootverbose)
     pnp_printf(id, "start dependent (%d)\n",
         priorities[ncfgs]);
    ncfgs++;
    break;

   case 129:
    if (start == ((void*)0)) {
     device_printf(parent,
            "malformed resources\n");
     len = 0;
     break;
    }




    pnp_merge_resources(dev, &configs[0], config);
    pnp_parse_dependant(dev, start, p - start - 1,
          config, ldn);
    start = ((void*)0);
    if (bootverbose)
     pnp_printf(id, "end dependent\n");





    config = &configs[0];
    bzero(config, sizeof(*config));
    break;

   case 130:
    if (start != ((void*)0)) {
     device_printf(parent,
            "malformed resources\n");
    }
    len = 0;
    break;

   default:
    if (start != ((void*)0))

     break;
    if (pnp_parse_desc(dev, tag, p, l, config, ldn))
     len = 0;
    break;
   }
   p += l;
  } else {

   if (len < 2) {
    len = 0;
    break;
   }
   l = I16(p);
   p += 2;
   len -= 2;
   if (len < l) {
    len = 0;
    break;
   }
   len -= l;
   if (start == ((void*)0) &&
       pnp_parse_desc(dev, tag, p, l, config, ldn)) {
    len = 0;
    break;
   }
   p += l;
  }
 }

 if (ncfgs == 1) {

  ISA_ADD_CONFIG(parent, dev, priorities[0], &configs[0]);
  free(configs, M_DEVBUF);
  return;
 }

 for (i = 1; i < ncfgs; i++) {





  pnp_merge_resources(dev, &configs[0], &configs[i]);
  ISA_ADD_CONFIG(parent, dev, priorities[i], &configs[i]);
 }

 free(configs, M_DEVBUF);
}
