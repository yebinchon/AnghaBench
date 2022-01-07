
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devctl_notify (char*,char*,char*,int *) ;

__attribute__((used)) static void
aeon_pbutton_intr(void *_unused)
{
 devctl_notify("AEON", "power", "press", ((void*)0));
}
