
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {TYPE_2__* it_v2; TYPE_1__* ot_v2; } ;
struct uaudio_terminal_node {TYPE_3__ u; } ;
struct uaudio_mixer_node {int class; } ;
struct TYPE_5__ {int wTerminalType; } ;
struct TYPE_4__ {int wTerminalType; } ;


 int UAC_INPUT ;
 int UAC_OUTPUT ;
 int UAC_RECORD ;
 int UAT_UNDEFINED ;
 int UGETW (int ) ;
 struct uaudio_terminal_node* uaudio_mixer_get_input (struct uaudio_terminal_node const*,int) ;
 struct uaudio_terminal_node* uaudio_mixer_get_output (struct uaudio_terminal_node const*,int) ;

__attribute__((used)) static uint16_t
uaudio20_mixer_determine_class(const struct uaudio_terminal_node *iot,
    struct uaudio_mixer_node *mix)
{
 uint16_t terminal_type = 0x0000;
 const struct uaudio_terminal_node *input[2];
 const struct uaudio_terminal_node *output[2];

 input[0] = uaudio_mixer_get_input(iot, 0);
 input[1] = uaudio_mixer_get_input(iot, 1);

 output[0] = uaudio_mixer_get_output(iot, 0);
 output[1] = uaudio_mixer_get_output(iot, 1);





 if (output[0] && (!output[1]))
  terminal_type = UGETW(output[0]->u.ot_v2->wTerminalType);




 if ((terminal_type & 0xff00) == (UAT_UNDEFINED & 0xff00)) {

  mix->class = UAC_RECORD;
  if (input[0] && (!input[1])) {
   terminal_type =
       UGETW(input[0]->u.it_v2->wTerminalType);
  } else {
   terminal_type = 0;
  }
  goto done;
 }





 if (input[0] && (!input[1])) {
  mix->class = UAC_INPUT;
  terminal_type =
      UGETW(input[0]->u.it_v2->wTerminalType);
  goto done;
 }



 mix->class = UAC_OUTPUT;
done:
 return (terminal_type);
}
