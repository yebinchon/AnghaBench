
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int XLP_PCI_DEVINFO_REG0 ;
 int nlm_cms_setup_credits (int ,int,int,int) ;
 int nlm_get_cms_pcibase (int) ;
 int nlm_get_cms_regbase (int) ;
 int nlm_read_reg (int ,int ) ;

void
xlp_msgring_cpu_init(int node, int cpu, int credit)
{
 uint64_t cmspcibase = nlm_get_cms_pcibase(node);
 uint64_t cmsbase = nlm_get_cms_regbase(node);
 int qid, maxqid, src;

 maxqid = nlm_read_reg(cmspcibase, XLP_PCI_DEVINFO_REG0);


 if((cpu % 4) == 0) {
  src = cpu << 2;
  for (qid = 0; qid < maxqid; qid++)
   nlm_cms_setup_credits(cmsbase, qid, src, credit);
 }
}
