
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mh_ioh; int mh_iot; } ;
struct mwl_hal_priv {TYPE_1__ public; } ;
typedef int bus_size_t ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static __inline void
WR4(struct mwl_hal_priv *mh, bus_size_t off, uint32_t val)
{
 bus_space_write_4(mh->public.mh_iot, mh->public.mh_ioh, off, val);
}
