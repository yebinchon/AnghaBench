
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;


 int BHNDB_IO_COMMON_SETUP (scalar_t__) ;
 int BHNDB_IO_COMMON_TEARDOWN () ;
 int bus_barrier (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ io_offset ;
 int io_res ;

__attribute__((used)) static void
bhndb_bus_barrier(device_t dev, device_t child, struct bhnd_resource *r,
    bus_size_t offset, bus_size_t length, int flags)
{
 BHNDB_IO_COMMON_SETUP(length);

 bus_barrier(io_res, io_offset + offset, length, flags);

 BHNDB_IO_COMMON_TEARDOWN();
}
