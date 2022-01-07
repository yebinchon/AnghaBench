
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mppe_state {int keylen; int keybits; int stateless; } ;
struct fsm_opt {int data; } ;


 int LogWARN ;



 int MPPE_OPT_BITMASK ;
 int MPPE_OPT_STATELESS ;
 struct mppe_state* calloc (int,int) ;
 int free (struct mppe_state*) ;
 int log_Printf (int ,char*,int) ;
 int ua_ntohl (int ,int*) ;

__attribute__((used)) static struct mppe_state *
MPPE_InitState(struct fsm_opt *o)
{
  struct mppe_state *mp;
  u_int32_t val;

  if ((mp = calloc(1, sizeof *mp)) != ((void*)0)) {
    ua_ntohl(o->data, &val);

    switch (val & MPPE_OPT_BITMASK) {
    case 130:
      mp->keylen = 16;
      mp->keybits = 128;
      break;
    case 128:
      mp->keylen = 8;
      mp->keybits = 56;
      break;
    case 129:
      mp->keylen = 8;
      mp->keybits = 40;
      break;
    default:
      log_Printf(LogWARN, "Unexpected MPPE options 0x%08x\n", val);
      free(mp);
      return ((void*)0);
    }

    mp->stateless = !!(val & MPPE_OPT_STATELESS);
  }

  return mp;
}
