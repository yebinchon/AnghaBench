
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_command {int ac_flags; int ac_datamap; int ac_tag; int * ac_data; } ;


 int AMR_CMD_DATAIN ;
 int AMR_CMD_DATAOUT ;
 int AMR_CMD_MAPPED ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int debug_called (int) ;

__attribute__((used)) static void
amr_unmapcmd(struct amr_command *ac)
{
    int flag;

    debug_called(3);


    if (ac->ac_flags & AMR_CMD_MAPPED) {

 if (ac->ac_data != ((void*)0)) {

     flag = 0;
     if (ac->ac_flags & AMR_CMD_DATAIN)
  flag |= BUS_DMASYNC_POSTREAD;
     if (ac->ac_flags & AMR_CMD_DATAOUT)
  flag |= BUS_DMASYNC_POSTWRITE;

     bus_dmamap_sync(ac->ac_tag, ac->ac_datamap, flag);
     bus_dmamap_unload(ac->ac_tag, ac->ac_datamap);
 }

 ac->ac_flags &= ~AMR_CMD_MAPPED;
    }
}
