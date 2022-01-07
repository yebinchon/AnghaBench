
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_ident {int desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int debug_called (int) ;
 int device_set_desc (int ,int ) ;
 struct mlx_ident* mlx_pci_match (int ) ;

__attribute__((used)) static int
mlx_pci_probe(device_t dev)
{
    struct mlx_ident *m;

    debug_called(1);

    m = mlx_pci_match(dev);
    if (m != ((void*)0)) {
 device_set_desc(dev, m->desc);
 return(BUS_PROBE_DEFAULT);
    }
    return(ENXIO);
}
