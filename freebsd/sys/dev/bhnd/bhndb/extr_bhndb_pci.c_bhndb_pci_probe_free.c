
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_probe {int hr; int erom; int cores; } ;


 int M_BHND ;
 int bhnd_erom_free (int ) ;
 int bhnd_erom_free_core_table (int ,int ) ;
 int bhndb_release_host_resources (int ) ;
 int free (struct bhndb_pci_probe*,int ) ;

__attribute__((used)) static void
bhndb_pci_probe_free(struct bhndb_pci_probe *probe)
{
 bhnd_erom_free_core_table(probe->erom, probe->cores);
 bhnd_erom_free(probe->erom);
 bhndb_release_host_resources(probe->hr);
 free(probe, M_BHND);
}
