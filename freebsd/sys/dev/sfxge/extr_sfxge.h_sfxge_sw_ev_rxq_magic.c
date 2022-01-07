
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sfxge_rxq {int dummy; } ;
typedef enum sfxge_sw_ev { ____Placeholder_sfxge_sw_ev } sfxge_sw_ev ;


 int sfxge_sw_ev_mk_magic (int,int ) ;

__attribute__((used)) static inline uint16_t
sfxge_sw_ev_rxq_magic(enum sfxge_sw_ev sw_ev, struct sfxge_rxq *rxq)
{
 return sfxge_sw_ev_mk_magic(sw_ev, 0);
}
