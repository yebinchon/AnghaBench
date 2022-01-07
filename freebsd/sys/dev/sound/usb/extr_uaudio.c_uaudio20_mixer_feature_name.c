
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct uaudio_tt_to_feature {scalar_t__ terminal_type; scalar_t__ feature; } ;
struct uaudio_terminal_node {int dummy; } ;
struct uaudio_mixer_node {scalar_t__ class; } ;


 int DPRINTF (char*,scalar_t__,scalar_t__) ;
 scalar_t__ SOUND_MIXER_IMIX ;
 scalar_t__ UAC_RECORD ;
 scalar_t__ uaudio20_mixer_determine_class (struct uaudio_terminal_node const*,struct uaudio_mixer_node*) ;
 struct uaudio_tt_to_feature* uaudio_tt_to_feature ;

__attribute__((used)) static uint16_t
uaudio20_mixer_feature_name(const struct uaudio_terminal_node *iot,
    struct uaudio_mixer_node *mix)
{
 const struct uaudio_tt_to_feature *uat;
 uint16_t terminal_type = uaudio20_mixer_determine_class(iot, mix);

 if ((mix->class == UAC_RECORD) && (terminal_type == 0))
  return (SOUND_MIXER_IMIX);

 for (uat = uaudio_tt_to_feature; uat->terminal_type != 0; uat++) {
  if (uat->terminal_type == terminal_type)
   break;
 }

 DPRINTF("terminal_type=0x%04x -> %d\n",
     terminal_type, uat->feature);

 return (uat->feature);
}
