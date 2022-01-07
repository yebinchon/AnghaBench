
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bktr_ptr_t ;
struct TYPE_4__ {int audio_mux_select; scalar_t__ audio_mute_state; } ;





 int BCTV2_GPIO_REG0 ;
 int BCTV2_GPIO_REG1 ;
 int BCTV2_GR0_AUDIO_BOTH ;
 int BCTV2_GR0_AUDIO_MAIN ;
 int BCTV2_GR0_AUDIO_MUTE ;
 int BCTV2_GR0_AUDIO_SUB ;
 scalar_t__ TRUE ;
 int bctv2_gpio_write (TYPE_1__*,int ,int) ;

void
set_bctv2_audio( bktr_ptr_t bktr )
{
        int data;

        switch (bktr->audio_mux_select) {
        case 1:
        case 2:
                bctv2_gpio_write(bktr, BCTV2_GPIO_REG1, 0);
                break;
        default:
                bctv2_gpio_write(bktr, BCTV2_GPIO_REG1, 1);
                break;
        }

        switch (130) {
        case 128:
                data = BCTV2_GR0_AUDIO_SUB;
                break;
        case 130:
                data = BCTV2_GR0_AUDIO_BOTH;
                break;
        case 129:
        default:
                data = BCTV2_GR0_AUDIO_MAIN;
                break;
        }
        if (bktr->audio_mute_state == TRUE)
                data |= BCTV2_GR0_AUDIO_MUTE;

        bctv2_gpio_write(bktr, BCTV2_GPIO_REG0, data);

        return;
}
