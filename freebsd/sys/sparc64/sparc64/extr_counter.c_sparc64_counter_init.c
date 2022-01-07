
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int tc_quality; struct ct_softc* tc_priv; int tc_name; int tc_frequency; int tc_counter_mask; int tc_get_timecount; } ;
struct ct_softc {scalar_t__ sc_offset; int sc_handle; int sc_tag; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef scalar_t__ bus_addr_t ;


 int COUNTER_FREQ ;
 int COUNTER_MASK ;
 int COUNTER_QUALITY ;
 scalar_t__ CTR_CT0 ;
 scalar_t__ CTR_CT1 ;
 scalar_t__ CTR_LIMIT ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int bus_space_write_8 (int ,int ,scalar_t__,int ) ;
 int counter_get_timecount ;
 void* malloc (int,int ,int) ;
 int printf (char*) ;
 int strdup (char const*,int ) ;
 int tc_init (struct timecounter*) ;

void
sparc64_counter_init(const char *name, bus_space_tag_t tag,
    bus_space_handle_t handle, bus_addr_t offset)
{
 struct timecounter *tc;
 struct ct_softc *sc;

 printf("initializing counter-timer\n");





 bus_space_write_8(tag, handle, offset + CTR_CT0 + CTR_LIMIT,
     COUNTER_MASK);
 bus_space_write_8(tag, handle, offset + CTR_CT1 + CTR_LIMIT,
     COUNTER_MASK);

 tc = malloc(sizeof(*tc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK);
 sc->sc_tag = tag;
 sc->sc_handle = handle;
 sc->sc_offset = offset + CTR_CT0;
 tc->tc_get_timecount = counter_get_timecount;
 tc->tc_counter_mask = COUNTER_MASK;
 tc->tc_frequency = COUNTER_FREQ;
 tc->tc_name = strdup(name, M_DEVBUF);
 tc->tc_priv = sc;
 tc->tc_quality = COUNTER_QUALITY;
 tc_init(tc);
}
