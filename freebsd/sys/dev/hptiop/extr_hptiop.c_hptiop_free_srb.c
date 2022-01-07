
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_srb {struct hpt_iop_srb* next; } ;
struct hpt_iop_hba {struct hpt_iop_srb* srb_list; } ;



__attribute__((used)) static void hptiop_free_srb(struct hpt_iop_hba *hba, struct hpt_iop_srb *srb)
{
 srb->next = hba->srb_list;
 hba->srb_list = srb;
}
