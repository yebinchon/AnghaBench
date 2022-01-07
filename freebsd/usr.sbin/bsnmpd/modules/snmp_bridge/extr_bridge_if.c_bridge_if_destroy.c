
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int bif_name; } ;


 scalar_t__ bridge_destroy (int ) ;
 int bridge_remove_bif (struct bridge_if*) ;

__attribute__((used)) static int
bridge_if_destroy(struct bridge_if *bif)
{
 if (bridge_destroy(bif->bif_name) < 0)
  return (-1);

 bridge_remove_bif(bif);

 return (0);
}
