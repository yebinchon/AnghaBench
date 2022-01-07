
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct table_info {int lookup; int state; int xstate; } ;
struct radix_cfg {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int ENOMEM ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int OFF_LEN_INET ;
 int OFF_LEN_INET6 ;
 struct radix_cfg* malloc (int,int ,int) ;
 int rn_detachhead (int *) ;
 int rn_inithead (int *,int ) ;
 int ta_lookup_radix ;

__attribute__((used)) static int
ta_init_radix(struct ip_fw_chain *ch, void **ta_state, struct table_info *ti,
    char *data, uint8_t tflags)
{
 struct radix_cfg *cfg;

 if (!rn_inithead(&ti->state, OFF_LEN_INET))
  return (ENOMEM);
 if (!rn_inithead(&ti->xstate, OFF_LEN_INET6)) {
  rn_detachhead(&ti->state);
  return (ENOMEM);
 }

 cfg = malloc(sizeof(struct radix_cfg), M_IPFW, M_WAITOK | M_ZERO);

 *ta_state = cfg;
 ti->lookup = ta_lookup_radix;

 return (0);
}
