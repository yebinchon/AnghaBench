
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_bus {int state; } ;
typedef enum brcmf_bus_state { ____Placeholder_brcmf_bus_state } brcmf_bus_state ;



void
brcmf_bus_change_state(struct brcmf_bus *bus, enum brcmf_bus_state state)
{
 bus->state = state;
}
