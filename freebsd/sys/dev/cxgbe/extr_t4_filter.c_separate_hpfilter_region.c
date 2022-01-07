
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 scalar_t__ CHELSIO_T6 ;
 scalar_t__ chip_id (struct adapter*) ;

__attribute__((used)) static inline bool
separate_hpfilter_region(struct adapter *sc)
{

 return (chip_id(sc) >= CHELSIO_T6);
}
