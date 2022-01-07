
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef size_t uint8_t ;
struct TYPE_11__ {TYPE_9__* eu_v2; TYPE_8__* pu_v2; TYPE_7__* fu_v2; TYPE_6__* ef_v2; TYPE_5__* ru_v2; TYPE_4__* su_v2; TYPE_3__* mu_v2; TYPE_2__* ot_v2; TYPE_1__* desc; } ;
struct uaudio_terminal_node {TYPE_10__ u; } ;
struct uaudio_search_result {scalar_t__ recurse_level; int* bit_input; } ;
struct TYPE_20__ {size_t* baSourceId; size_t bNrInPins; } ;
struct TYPE_19__ {size_t* baSourceId; size_t bNrInPins; } ;
struct TYPE_18__ {size_t bSourceId; } ;
struct TYPE_17__ {size_t bSourceId; } ;
struct TYPE_16__ {size_t bSourceId; } ;
struct TYPE_15__ {size_t* baSourceId; size_t bNrInPins; } ;
struct TYPE_14__ {size_t* baSourceId; size_t bNrInPins; } ;
struct TYPE_13__ {size_t bSourceId; } ;
struct TYPE_12__ {int bDescriptorSubtype; } ;


 int DPRINTF (char*,size_t) ;
 scalar_t__ UAUDIO_RECURSE_LIMIT ;
__attribute__((used)) static void
uaudio20_mixer_find_inputs_sub(struct uaudio_terminal_node *root,
    const uint8_t *p_id, uint8_t n_id,
    struct uaudio_search_result *info)
{
 struct uaudio_terminal_node *iot;
 uint8_t n;
 uint8_t i;
 uint8_t is_last;

top:
 for (n = 0; n < n_id; n++) {

  i = p_id[n];

  if (info->recurse_level == UAUDIO_RECURSE_LIMIT) {
   DPRINTF("avoided going into a circle at id=%d!\n", i);
   return;
  }

  info->recurse_level++;

  iot = (root + i);

  if (iot->u.desc == ((void*)0))
   continue;

  is_last = ((n + 1) == n_id);

  switch (iot->u.desc->bDescriptorSubtype) {
  case 133:
   info->bit_input[i / 8] |= (1 << (i % 8));
   break;

  case 131:
   if (is_last) {
    p_id = &iot->u.ot_v2->bSourceId;
    n_id = 1;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, &iot->u.ot_v2->bSourceId, 1, info);
   break;

  case 132:
   if (is_last) {
    p_id = iot->u.mu_v2->baSourceId;
    n_id = iot->u.mu_v2->bNrInPins;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, iot->u.mu_v2->baSourceId,
       iot->u.mu_v2->bNrInPins, info);
   break;

  case 128:
   if (is_last) {
    p_id = iot->u.su_v2->baSourceId;
    n_id = iot->u.su_v2->bNrInPins;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, iot->u.su_v2->baSourceId,
       iot->u.su_v2->bNrInPins, info);
   break;

  case 129:
   if (is_last) {
    p_id = &iot->u.ru_v2->bSourceId;
    n_id = 1;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, &iot->u.ru_v2->bSourceId,
       1, info);
   break;

  case 136:
   if (is_last) {
    p_id = &iot->u.ef_v2->bSourceId;
    n_id = 1;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, &iot->u.ef_v2->bSourceId,
       1, info);
   break;

  case 134:
   if (is_last) {
    p_id = &iot->u.fu_v2->bSourceId;
    n_id = 1;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, &iot->u.fu_v2->bSourceId, 1, info);
   break;

  case 130:
   if (is_last) {
    p_id = iot->u.pu_v2->baSourceId;
    n_id = iot->u.pu_v2->bNrInPins;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, iot->u.pu_v2->baSourceId,
       iot->u.pu_v2->bNrInPins, info);
   break;

  case 135:
   if (is_last) {
    p_id = iot->u.eu_v2->baSourceId;
    n_id = iot->u.eu_v2->bNrInPins;
    goto top;
   }
   uaudio20_mixer_find_inputs_sub(
       root, iot->u.eu_v2->baSourceId,
       iot->u.eu_v2->bNrInPins, info);
   break;
  default:
   break;
  }
 }
}
