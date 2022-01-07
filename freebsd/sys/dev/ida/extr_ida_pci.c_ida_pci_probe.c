
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_board {int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct ida_board* ida_pci_match (int ) ;

__attribute__((used)) static int
ida_pci_probe(device_t dev)
{
 struct ida_board *board = ida_pci_match(dev);

 if (board != ((void*)0)) {
  device_set_desc(dev, board->desc);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
