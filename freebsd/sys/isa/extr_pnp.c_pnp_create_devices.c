
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint32_t ;
typedef int u_char ;
struct pnp_set_config_arg {int csn; int ldn; } ;
struct TYPE_3__ {int serial; int vendor_id; } ;
typedef TYPE_1__ pnp_id ;
typedef scalar_t__ device_t ;
typedef int buf ;


 scalar_t__ BUS_ADD_CHILD (scalar_t__,int ,int *,int) ;
 int FALSE ;
 int ISACFGATTR_CANDISABLE ;
 int ISACFGATTR_DYNAMIC ;
 int ISA_ORDER_PNP ;
 int ISA_SET_CONFIG_CALLBACK (scalar_t__,scalar_t__,int ,struct pnp_set_config_arg*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 scalar_t__ PNP_LRES_NUM (int) ;
 scalar_t__ PNP_RES_TYPE (int) ;
 int PNP_SRES_LEN (int) ;
 int PNP_SRES_NUM (int) ;

 scalar_t__ PNP_TAG_ID_ANSI ;

 int bcopy (int*,char*,int) ;
 int device_printf (scalar_t__,char*) ;
 int device_set_desc_copy (scalar_t__,char*) ;
 int isa_set_configattr (scalar_t__,int) ;
 int isa_set_logicalid (scalar_t__,char) ;
 int isa_set_pnp_csn (scalar_t__,int) ;
 int isa_set_pnp_ldn (scalar_t__,int) ;
 int isa_set_serial (scalar_t__,int ) ;
 int isa_set_vendorid (scalar_t__,int ) ;
 struct pnp_set_config_arg* malloc (int,int ,int ) ;
 int pnp_check_quirks (int ,char,int,int *) ;
 char* pnp_eisaformat (char) ;
 int pnp_parse_resources (scalar_t__,int*,int,int) ;
 int pnp_set_config ;

__attribute__((used)) static int
pnp_create_devices(device_t parent, pnp_id *p, int csn,
    u_char *resources, int len)
{
 u_char tag, *resp, *resinfo, *startres = ((void*)0);
 int large_len, scanning = len, retval = FALSE;
 uint32_t logical_id;
 device_t dev = 0;
 int ldn = 0;
 struct pnp_set_config_arg *csnldn;
 char buf[100];
 char *desc = ((void*)0);

 resp = resources;
 while (scanning > 0) {
  tag = *resp++;
  scanning--;
  if (PNP_RES_TYPE(tag) != 0) {

   if (scanning < 2) {
    scanning = 0;
    continue;
   }
   large_len = resp[0] + (resp[1] << 8);
   resp += 2;

   if (scanning < large_len) {
    scanning = 0;
    continue;
   }
   resinfo = resp;
   resp += large_len;
   scanning -= large_len;

   if (PNP_LRES_NUM(tag) == PNP_TAG_ID_ANSI) {
    if (dev) {





     continue;
    }

    if (large_len > sizeof(buf) - 1)
     large_len = sizeof(buf) - 1;
    bcopy(resinfo, buf, large_len);




    while (buf[large_len-1] == ' ')
     large_len--;
    buf[large_len] = '\0';
    desc = buf;
    continue;
   }

   continue;
  }


  if (scanning < PNP_SRES_LEN(tag)) {
   scanning = 0;
   continue;
  }
  resinfo = resp;
  resp += PNP_SRES_LEN(tag);
  scanning -= PNP_SRES_LEN(tag);

  switch (PNP_SRES_NUM(tag)) {
  case 128:




   if (startres) {
    pnp_parse_resources(dev, startres,
        resinfo - startres - 1, ldn);
    dev = 0;
    startres = ((void*)0);
   }





   bcopy(resinfo, &logical_id, 4);
   pnp_check_quirks(p->vendor_id, logical_id, ldn, ((void*)0));
   dev = BUS_ADD_CHILD(parent, ISA_ORDER_PNP, ((void*)0), -1);
   if (desc)
    device_set_desc_copy(dev, desc);
   else
    device_set_desc_copy(dev,
        pnp_eisaformat(logical_id));
   isa_set_vendorid(dev, p->vendor_id);
   isa_set_serial(dev, p->serial);
   isa_set_logicalid(dev, logical_id);
   isa_set_configattr(dev,
       ISACFGATTR_CANDISABLE | ISACFGATTR_DYNAMIC);
   csnldn = malloc(sizeof *csnldn, M_DEVBUF, M_NOWAIT);
   if (!csnldn) {
    device_printf(parent, "out of memory\n");
    scanning = 0;
    break;
   }
   csnldn->csn = csn;
   csnldn->ldn = ldn;
   ISA_SET_CONFIG_CALLBACK(parent, dev, pnp_set_config,
       csnldn);
   isa_set_pnp_csn(dev, csn);
   isa_set_pnp_ldn(dev, ldn);
   ldn++;
   startres = resp;
   break;

  case 129:
   if (!startres) {
    device_printf(parent, "malformed resources\n");
    scanning = 0;
    break;
   }
   pnp_parse_resources(dev, startres,
       resinfo - startres - 1, ldn);
   dev = 0;
   startres = ((void*)0);
   scanning = 0;
   break;

  default:

   break;
  }
 }

 return (retval);
}
