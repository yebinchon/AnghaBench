
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct isa_config {int dummy; } ;
typedef scalar_t__ (* pnp_scan_cb ) (int ,int ,int *,int,struct isa_config*,int) ;
typedef int device_t ;


 int I16 (int *) ;
 scalar_t__ PNP_RES_TYPE (int ) ;
 int PNP_SRES_LEN (int ) ;
 scalar_t__ PNP_SRES_NUM (int ) ;
 scalar_t__ PNP_TAG_END ;
 scalar_t__ stub1 (int ,int ,int *,int,struct isa_config*,int) ;
 scalar_t__ stub2 (int ,int ,int *,int,struct isa_config*,int) ;

u_char
*pnp_scan_resources(device_t dev, u_char *resources, int len,
      struct isa_config *config, int ldn, pnp_scan_cb *cb)
{
 u_char *p;
 u_char tag;
 int l;

 p = resources;
 while (len > 0) {
  tag = *p++;
  len--;
  if (PNP_RES_TYPE(tag) == 0) {

   l = PNP_SRES_LEN(tag);
   if (len < l)
    break;
   if ((*cb)(dev, tag, p, l, config, ldn))
    return (p + l);
   if (PNP_SRES_NUM(tag) == PNP_TAG_END)
    return (p + l);
  } else {

   if (len < 2)
    break;
   l = I16(p);
   p += 2;
   len -= 2;
   if (len < l)
    break;
   if ((*cb)(dev, tag, p, l, config, ldn))
    return (p + l);
  }
  p += l;
  len -= l;
 }
 return ((void*)0);
}
