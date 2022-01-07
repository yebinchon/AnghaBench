
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_osfp_entry {int fp_oses; } ;
struct pf_os_fingerprint {int fp_oses; } ;


 int M_PFOSFP ;
 struct pf_osfp_entry* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int V_pf_osfp_list ;
 int fp_entry ;
 int fp_next ;
 int free (struct pf_osfp_entry*,int ) ;

void
pf_osfp_flush(void)
{
 struct pf_os_fingerprint *fp;
 struct pf_osfp_entry *entry;

 while ((fp = SLIST_FIRST(&V_pf_osfp_list))) {
  SLIST_REMOVE_HEAD(&V_pf_osfp_list, fp_next);
  while ((entry = SLIST_FIRST(&fp->fp_oses))) {
   SLIST_REMOVE_HEAD(&fp->fp_oses, fp_entry);
   free(entry, M_PFOSFP);
  }
  free(fp, M_PFOSFP);
 }
}
