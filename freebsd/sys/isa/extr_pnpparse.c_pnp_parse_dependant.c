
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct isa_config {int dummy; } ;
typedef int device_t ;


 int pnp_parse_desc ;
 int * pnp_scan_resources (int ,int *,int,struct isa_config*,int,int ) ;

u_char
*pnp_parse_dependant(device_t dev, u_char *resources, int len,
       struct isa_config *config, int ldn)
{

 return pnp_scan_resources(dev, resources, len, config, ldn,
      pnp_parse_desc);
}
