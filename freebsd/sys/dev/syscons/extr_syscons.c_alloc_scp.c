
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scr_stat ;
typedef int sc_softc_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 char* SC_DFLT_TERM ;
 int TRUE ;
 int init_scp (int *,int,int *) ;
 scalar_t__ malloc (int,int ,int ) ;
 int sc_alloc_cut_buffer (int *,int ) ;
 int sc_alloc_history_buffer (int *,int ,int ,int ) ;
 int sc_alloc_scr_buffer (int *,int ,int ) ;
 int sc_init_emulator (int *,char*) ;

__attribute__((used)) static scr_stat
*alloc_scp(sc_softc_t *sc, int vty)
{
    scr_stat *scp;



    scp = (scr_stat *)malloc(sizeof(scr_stat), M_DEVBUF, M_WAITOK);
    init_scp(sc, vty, scp);

    sc_alloc_scr_buffer(scp, TRUE, TRUE);
    if (sc_init_emulator(scp, SC_DFLT_TERM))
 sc_init_emulator(scp, "*");


    sc_alloc_cut_buffer(scp, TRUE);



    sc_alloc_history_buffer(scp, 0, 0, TRUE);


    return scp;
}
