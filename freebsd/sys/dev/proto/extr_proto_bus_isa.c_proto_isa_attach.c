
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ISA_NDRQ ;
 int ISA_NIRQ ;
 int ISA_NMEM ;
 int ISA_NPORT ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int proto_attach (int ) ;
 int proto_isa_alloc (int ,int ,int ) ;

__attribute__((used)) static int
proto_isa_attach(device_t dev)
{

 proto_isa_alloc(dev, SYS_RES_IRQ, ISA_NIRQ);
 proto_isa_alloc(dev, SYS_RES_DRQ, ISA_NDRQ);
 proto_isa_alloc(dev, SYS_RES_IOPORT, ISA_NPORT);
 proto_isa_alloc(dev, SYS_RES_MEMORY, ISA_NMEM);
 return (proto_attach(dev));
}
