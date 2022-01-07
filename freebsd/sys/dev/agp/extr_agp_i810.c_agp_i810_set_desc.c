
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_match {int name; } ;
typedef int device_t ;


 int device_set_desc (int ,int ) ;

__attribute__((used)) static void
agp_i810_set_desc(device_t dev, const struct agp_i810_match *match)
{

 device_set_desc(dev, match->name);
}
