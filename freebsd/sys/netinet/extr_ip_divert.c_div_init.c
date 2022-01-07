
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_HASHFIELDS_NONE ;
 int V_divcb ;
 int V_divcbinfo ;
 int div_inpcb_init ;
 int in_pcbinfo_init (int *,char*,int *,int,int,char*,int ,int ) ;

__attribute__((used)) static void
div_init(void)
{






 in_pcbinfo_init(&V_divcbinfo, "div", &V_divcb, 1, 1, "divcb",
     div_inpcb_init, IPI_HASHFIELDS_NONE);
}
