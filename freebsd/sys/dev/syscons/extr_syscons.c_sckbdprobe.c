
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KB_CONF_PROBE_ONLY ;
 int kbd_configure (int ) ;
 scalar_t__ kbd_find_keyboard (char*,int) ;

__attribute__((used)) static int
sckbdprobe(int unit, int flags, int cons)
{

    kbd_configure(cons ? KB_CONF_PROBE_ONLY : 0);

    return (kbd_find_keyboard("*", unit) >= 0);
}
