
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_9__ {int eqid; int* val; int mv_pkd; int pfn_vfn; int cidx; } ;
struct TYPE_8__ {int eqid; int* wrhdr; int pfn_vfn; int cidx; } ;
struct TYPE_7__ {int regaddr; int regval; } ;
struct TYPE_6__ {int* info; } ;
struct TYPE_10__ {TYPE_4__ acl; TYPE_3__ wr; TYPE_2__ hwmodule; TYPE_1__ exception; } ;
struct fw_error_cmd {int op_to_type; TYPE_5__ u; } ;
struct adapter {int dev; } ;
typedef int __be64 ;


 int EINVAL ;
 scalar_t__ FW_ERROR_CMD ;




 scalar_t__ G_FW_ERROR_CMD_FATAL (int ) ;
 int G_FW_ERROR_CMD_MV (int ) ;
 int G_FW_ERROR_CMD_PFN (int ) ;
 int G_FW_ERROR_CMD_TYPE (int ) ;
 int G_FW_ERROR_CMD_VFN (int ) ;
 int LOG_ERR ;
 int be16toh (int ) ;
 int be32toh (int) ;
 int device_get_nameunit (int ) ;
 int log (int ,char*,...) ;
 unsigned int nitems (int*) ;

__attribute__((used)) static int
t4_handle_wrerr_rpl(struct adapter *adap, const __be64 *rpl)
{
 u8 opcode = *(const u8 *)rpl;
 const struct fw_error_cmd *e = (const void *)rpl;
 unsigned int i;

 if (opcode != FW_ERROR_CMD) {
  log(LOG_ERR,
      "%s: Received WRERR_RPL message with opcode %#x\n",
      device_get_nameunit(adap->dev), opcode);
  return (EINVAL);
 }
 log(LOG_ERR, "%s: FW_ERROR (%s) ", device_get_nameunit(adap->dev),
     G_FW_ERROR_CMD_FATAL(be32toh(e->op_to_type)) ? "fatal" :
     "non-fatal");
 switch (G_FW_ERROR_CMD_TYPE(be32toh(e->op_to_type))) {
 case 130:
  log(LOG_ERR, "exception info:\n");
  for (i = 0; i < nitems(e->u.exception.info); i++)
   log(LOG_ERR, "%s%08x", i == 0 ? "\t" : " ",
       be32toh(e->u.exception.info[i]));
  log(LOG_ERR, "\n");
  break;
 case 129:
  log(LOG_ERR, "HW module regaddr %08x regval %08x\n",
      be32toh(e->u.hwmodule.regaddr),
      be32toh(e->u.hwmodule.regval));
  break;
 case 128:
  log(LOG_ERR, "WR cidx %d PF %d VF %d eqid %d hdr:\n",
      be16toh(e->u.wr.cidx),
      G_FW_ERROR_CMD_PFN(be16toh(e->u.wr.pfn_vfn)),
      G_FW_ERROR_CMD_VFN(be16toh(e->u.wr.pfn_vfn)),
      be32toh(e->u.wr.eqid));
  for (i = 0; i < nitems(e->u.wr.wrhdr); i++)
   log(LOG_ERR, "%s%02x", i == 0 ? "\t" : " ",
       e->u.wr.wrhdr[i]);
  log(LOG_ERR, "\n");
  break;
 case 131:
  log(LOG_ERR, "ACL cidx %d PF %d VF %d eqid %d %s",
      be16toh(e->u.acl.cidx),
      G_FW_ERROR_CMD_PFN(be16toh(e->u.acl.pfn_vfn)),
      G_FW_ERROR_CMD_VFN(be16toh(e->u.acl.pfn_vfn)),
      be32toh(e->u.acl.eqid),
      G_FW_ERROR_CMD_MV(be16toh(e->u.acl.mv_pkd)) ? "vlanid" :
      "MAC");
  for (i = 0; i < nitems(e->u.acl.val); i++)
   log(LOG_ERR, " %02x", e->u.acl.val[i]);
  log(LOG_ERR, "\n");
  break;
 default:
  log(LOG_ERR, "type %#x\n",
      G_FW_ERROR_CMD_TYPE(be32toh(e->op_to_type)));
  return (EINVAL);
 }
 return (0);
}
