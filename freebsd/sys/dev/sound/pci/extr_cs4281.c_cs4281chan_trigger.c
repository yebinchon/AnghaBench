
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_chinfo {int dummy; } ;
typedef int kobj_t ;





 int adcdac_go (struct sc_chinfo*,int) ;
 int adcdac_prog (struct sc_chinfo*) ;

__attribute__((used)) static int
cs4281chan_trigger(kobj_t obj, void *data, int go)
{
    struct sc_chinfo *ch = data;

    switch(go) {
    case 129:
 adcdac_prog(ch);
 adcdac_go(ch, 1);
 break;
    case 128:
    case 130:
 adcdac_go(ch, 0);
 break;
    default:
 break;
    }


    return 0;
}
