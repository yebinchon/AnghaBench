
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct table_info {int data; int lookup; } ;
struct ip_fw_chain {int dummy; } ;


 int E2BIG ;
 int kfib_parse_opts (int*,char*) ;
 int rt_numfibs ;
 int ta_lookup_kfib ;

__attribute__((used)) static int
ta_init_kfib(struct ip_fw_chain *ch, void **ta_state, struct table_info *ti,
    char *data, uint8_t tflags)
{
 int error, fibnum;

 fibnum = 0;
 if ((error = kfib_parse_opts(&fibnum, data)) != 0)
  return (error);

 if (fibnum >= rt_numfibs)
  return (E2BIG);

 ti->data = fibnum;
 ti->lookup = ta_lookup_kfib;

 return (0);
}
