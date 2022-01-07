
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_dev {int product; int revision; int vendor; TYPE_1__* target; } ;
struct fw_device {int csrrom; } ;
struct csrreg {scalar_t__ val; } ;
struct crom_context {int dummy; } ;
struct TYPE_2__ {struct fw_device* fwdev; } ;


 int CSRKEY_FIRM_VER ;
 int CSRKEY_MODEL ;
 int CSRKEY_VENDOR ;
 int CSRKEY_VER ;
 scalar_t__ CSRVAL_T10SBP2 ;
 int bzero (int ,int) ;
 int crom_init_context (struct crom_context*,int ) ;
 int crom_next (struct crom_context*) ;
 int crom_parse_text (struct crom_context*,int ,int) ;
 struct csrreg* crom_search_key (struct crom_context*,int ) ;
 int snprintf (int ,int,char*,scalar_t__) ;

__attribute__((used)) static void
sbp_probe_lun(struct sbp_dev *sdev)
{
 struct fw_device *fwdev;
 struct crom_context c, *cc = &c;
 struct csrreg *reg;

 bzero(sdev->vendor, sizeof(sdev->vendor));
 bzero(sdev->product, sizeof(sdev->product));

 fwdev = sdev->target->fwdev;
 crom_init_context(cc, fwdev->csrrom);

 crom_search_key(cc, CSRKEY_VENDOR);
 crom_next(cc);
 crom_parse_text(cc, sdev->vendor, sizeof(sdev->vendor));

 while ((reg = crom_search_key(cc, CSRKEY_VER)) != ((void*)0)) {
  if (reg->val == CSRVAL_T10SBP2)
   break;
  crom_next(cc);
 }

 reg = crom_search_key(cc, CSRKEY_FIRM_VER);
 if (reg != ((void*)0))
  snprintf(sdev->revision, sizeof(sdev->revision),
      "%06x", reg->val);

 crom_search_key(cc, CSRKEY_MODEL);
 crom_next(cc);
 crom_parse_text(cc, sdev->product, sizeof(sdev->product));
}
