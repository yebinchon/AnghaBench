
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 scalar_t__ SBBC_EPLD_INTERRUPT ;
 int SBBC_EPLD_INTERRUPT_ON ;
 scalar_t__ SBBC_EPLD_OFFSET ;
 int SBBC_EPLD_WRITE_1 (scalar_t__,int ) ;
 int bus_space_barrier (int ,int ,scalar_t__,int,int) ;

__attribute__((used)) static inline void
sbbc_send_intr(bus_space_tag_t bst, bus_space_handle_t bsh)
{

 SBBC_EPLD_WRITE_1(SBBC_EPLD_INTERRUPT, SBBC_EPLD_INTERRUPT_ON);
 bus_space_barrier(bst, bsh, SBBC_EPLD_OFFSET + SBBC_EPLD_INTERRUPT, 1,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
