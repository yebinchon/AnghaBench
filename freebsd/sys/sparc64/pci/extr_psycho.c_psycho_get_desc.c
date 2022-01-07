
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psycho_desc {int dummy; } ;
typedef int device_t ;


 int ofw_bus_get_compat (int ) ;
 int ofw_bus_get_model (int ) ;
 int psycho_compats ;
 struct psycho_desc* psycho_find_desc (int ,int ) ;
 int psycho_models ;

__attribute__((used)) static const struct psycho_desc *
psycho_get_desc(device_t dev)
{
 const struct psycho_desc *rv;

 rv = psycho_find_desc(psycho_models, ofw_bus_get_model(dev));
 if (rv == ((void*)0))
  rv = psycho_find_desc(psycho_compats,
      ofw_bus_get_compat(dev));
 return (rv);
}
