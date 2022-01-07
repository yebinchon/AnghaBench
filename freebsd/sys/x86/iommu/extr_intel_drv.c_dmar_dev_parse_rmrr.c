
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmrr_iter_args {int dev_domain; int dev_busno; int dev_path_len; struct dmar_map_entries_tailq* rmrr_entries; int const* dev_path; struct dmar_domain* domain; } ;
struct dmar_map_entries_tailq {int dummy; } ;
struct dmar_domain {int dummy; } ;
typedef int ACPI_DMAR_PCI_PATH ;


 int dmar_iterate_tbl (int ,struct rmrr_iter_args*) ;
 int dmar_rmrr_iter ;

void
dmar_dev_parse_rmrr(struct dmar_domain *domain, int dev_domain, int dev_busno,
    const void *dev_path, int dev_path_len,
    struct dmar_map_entries_tailq *rmrr_entries)
{
 struct rmrr_iter_args ria;

 ria.domain = domain;
 ria.dev_domain = dev_domain;
 ria.dev_busno = dev_busno;
 ria.dev_path = (const ACPI_DMAR_PCI_PATH *)dev_path;
 ria.dev_path_len = dev_path_len;
 ria.rmrr_entries = rmrr_entries;
 dmar_iterate_tbl(dmar_rmrr_iter, &ria);
}
