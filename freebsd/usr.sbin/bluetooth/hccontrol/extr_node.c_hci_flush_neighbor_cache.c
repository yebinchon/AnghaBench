
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_FLUSH_NEIGHBOR_CACHE ;
 scalar_t__ ioctl (int,int ) ;

__attribute__((used)) static int
hci_flush_neighbor_cache(int s, int argc, char **argv)
{
 if (ioctl(s, SIOC_HCI_RAW_NODE_FLUSH_NEIGHBOR_CACHE) < 0)
  return (ERROR);

 return (OK);
}
