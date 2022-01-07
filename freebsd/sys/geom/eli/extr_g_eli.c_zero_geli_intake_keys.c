
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keybuf {int kb_nents; TYPE_1__* kb_ents; } ;
struct TYPE_2__ {scalar_t__ ke_type; int ke_data; } ;


 scalar_t__ KEYBUF_TYPE_GELI ;
 scalar_t__ KEYBUF_TYPE_NONE ;
 int explicit_bzero (int ,int) ;
 struct keybuf* get_keybuf () ;

__attribute__((used)) static void
zero_geli_intake_keys(void)
{
        struct keybuf *keybuf;
        int i;

        if ((keybuf = get_keybuf()) != ((void*)0)) {

                for (i = 0; i < keybuf->kb_nents; i++) {
                         if (keybuf->kb_ents[i].ke_type == KEYBUF_TYPE_GELI) {
                                 explicit_bzero(keybuf->kb_ents[i].ke_data,
                                     sizeof(keybuf->kb_ents[i].ke_data));
                                 keybuf->kb_ents[i].ke_type = KEYBUF_TYPE_NONE;
                         }
                }
        }
}
