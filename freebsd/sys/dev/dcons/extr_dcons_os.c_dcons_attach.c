
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCONS_CON ;
 int DCONS_GDB ;
 int DC_GDB ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int *) ;
 int dcons_attach_port (int ,char*,int ) ;
 int dcons_callout ;
 int dcons_timeout ;
 int hz ;
 int poll_hz ;

__attribute__((used)) static int
dcons_attach(void)
{
 int polltime;

 dcons_attach_port(DCONS_CON, "dcons", 0);
 dcons_attach_port(DCONS_GDB, "dgdb", DC_GDB);
 callout_init(&dcons_callout, 1);
 polltime = hz / poll_hz;
 callout_reset(&dcons_callout, polltime, dcons_timeout, ((void*)0));
 return(0);
}
