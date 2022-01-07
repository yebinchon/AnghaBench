
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct sec_softc {int dummy; } ;
struct sec_hw_desc_ptr {int shdp_ptr; scalar_t__ shdp_j; scalar_t__ shdp_extent; int shdp_length; } ;
struct sec_desc {TYPE_1__* sd_desc; } ;
typedef int bus_size_t ;
typedef int bus_addr_t ;
struct TYPE_2__ {struct sec_hw_desc_ptr* shd_pointer; } ;


 int SEC_LOCK_ASSERT (struct sec_softc*,int ) ;
 int descriptors ;

__attribute__((used)) static int
sec_make_pointer_direct(struct sec_softc *sc, struct sec_desc *desc, u_int n,
    bus_addr_t data, bus_size_t dsize)
{
 struct sec_hw_desc_ptr *ptr;

 SEC_LOCK_ASSERT(sc, descriptors);

 ptr = &(desc->sd_desc->shd_pointer[n]);
 ptr->shdp_length = dsize;
 ptr->shdp_extent = 0;
 ptr->shdp_j = 0;
 ptr->shdp_ptr = data;

 return (0);
}
