
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct malo_hal {int mh_ioh; int mh_iot; } ;
typedef int bus_size_t ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static __inline void
malo_hal_write4(struct malo_hal *mh, bus_size_t off, uint32_t val)
{
 bus_space_write_4(mh->mh_iot, mh->mh_ioh, off, val);
}
