
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int G_GATE_CTL_NAME ;
 int UID_ROOT ;
 int g_gate_cdevsw ;
 int make_dev (int *,int,int ,int ,int,int ) ;
 int status_dev ;

__attribute__((used)) static void
g_gate_device(void)
{

 status_dev = make_dev(&g_gate_cdevsw, 0x0, UID_ROOT, GID_WHEEL, 0600,
     G_GATE_CTL_NAME);
}
