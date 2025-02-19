
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_range {int dummy; } ;
typedef int phandle_t ;


 int mtk_pci_range_dump (struct mtk_pci_range*) ;
 int mtk_pci_ranges_decode (int ,struct mtk_pci_range*,struct mtk_pci_range*) ;

__attribute__((used)) static int
mtk_pci_ranges(phandle_t node, struct mtk_pci_range *io_space,
    struct mtk_pci_range *mem_space)
{
 int err;

 if ((err = mtk_pci_ranges_decode(node, io_space, mem_space)) != 0) {
  return (err);
 }

 mtk_pci_range_dump(io_space);
 mtk_pci_range_dump(mem_space);

 return (0);
}
