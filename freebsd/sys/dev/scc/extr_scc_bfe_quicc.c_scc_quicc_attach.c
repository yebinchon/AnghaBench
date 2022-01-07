
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int scc_bfe_attach (int ,int ) ;

__attribute__((used)) static int
scc_quicc_attach(device_t dev)
{

 return (scc_bfe_attach(dev, 0));
}
