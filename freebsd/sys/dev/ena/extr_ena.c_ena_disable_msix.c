
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int * msix_entries; scalar_t__ msix_vecs; int pdev; } ;


 int ENA_FLAG_CLEAR_ATOMIC (int ,struct ena_adapter*) ;
 scalar_t__ ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_MSIX_ENABLED ;
 int M_DEVBUF ;
 int free (int *,int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
ena_disable_msix(struct ena_adapter *adapter)
{

 if (ENA_FLAG_ISSET(ENA_FLAG_MSIX_ENABLED, adapter)) {
  ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_MSIX_ENABLED, adapter);
  pci_release_msi(adapter->pdev);
 }

 adapter->msix_vecs = 0;
 if (adapter->msix_entries != ((void*)0))
  free(adapter->msix_entries, M_DEVBUF);
 adapter->msix_entries = ((void*)0);
}
