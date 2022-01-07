
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pvscsi_softc {size_t msg_ring_num_pages; int * msg_ring_ppn; int use_msg; } ;
struct pvscsi_cmd_desc_setup_msg_ring {size_t num_pages; int * ring_ppns; } ;
typedef int cmd ;


 int KASSERT (int ,char*) ;
 int PVSCSI_CMD_SETUP_MSG_RING ;
 int bzero (struct pvscsi_cmd_desc_setup_msg_ring*,int) ;
 int pvscsi_write_cmd (struct pvscsi_softc*,int ,struct pvscsi_cmd_desc_setup_msg_ring*,int) ;

__attribute__((used)) static void
pvscsi_setup_msg_ring(struct pvscsi_softc *sc)
{
 struct pvscsi_cmd_desc_setup_msg_ring cmd;
 uint32_t i;

 KASSERT(sc->use_msg, ("msg is not being used"));

 bzero(&cmd, sizeof(cmd));

 cmd.num_pages = sc->msg_ring_num_pages;
 for (i = 0; i < sc->msg_ring_num_pages; ++i) {
  cmd.ring_ppns[i] = sc->msg_ring_ppn[i];
 }

 pvscsi_write_cmd(sc, PVSCSI_CMD_SETUP_MSG_RING, &cmd, sizeof(cmd));
}
