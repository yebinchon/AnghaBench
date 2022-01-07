
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum res_mtt_states { ____Placeholder_res_mtt_states } res_mtt_states ;





__attribute__((used)) static inline const char *mtt_states_str(enum res_mtt_states state)
{
 switch (state) {
 case 128: return "RES_MTT_BUSY";
 case 129: return "RES_MTT_ALLOCATED";
 default: return "Unknown";
 }
}
