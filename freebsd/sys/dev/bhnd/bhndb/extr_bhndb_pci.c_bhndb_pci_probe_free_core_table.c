
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_info {int dummy; } ;


 int M_BHND ;
 int free (struct bhnd_core_info*,int ) ;

__attribute__((used)) static void
bhndb_pci_probe_free_core_table(struct bhnd_core_info *cores)
{
 free(cores, M_BHND);
}
