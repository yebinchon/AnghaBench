
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ conn_type; unsigned long long db_count; unsigned long long db_valid_mask; int heartbeat_timer; int device; int * xlat_reg; int * peer_reg; int * self_reg; int * reg; int db_vec_shift; int db_vec_count; int spad_count; } ;


 unsigned long long ATOM_DB_COUNT ;
 int ATOM_DB_MSIX_VECTOR_COUNT ;
 int ATOM_DB_MSIX_VECTOR_SHIFT ;
 int ATOM_SPAD_COUNT ;
 int ATOM_SPCICMD_OFFSET ;
 int KASSERT (int,char*) ;
 scalar_t__ NTB_CONN_B2B ;
 int NTB_SPEED_AUTO ;
 int NTB_WIDTH_AUTO ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int atom_b2b_reg ;
 int atom_link_hb ;
 int atom_pri_reg ;
 int atom_reg ;
 int atom_sec_xlat ;
 int callout_reset (int *,int ,int ,struct ntb_softc*) ;
 int configure_atom_secondary_side_bars (struct ntb_softc*) ;
 int intel_ntb_init_isr (struct ntb_softc*) ;
 int intel_ntb_link_enable (int ,int ,int ) ;
 int intel_ntb_reg_write (int,int ,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
intel_ntb_atom_init_dev(struct ntb_softc *ntb)
{
 int error;

 KASSERT(ntb->conn_type == NTB_CONN_B2B,
     ("Unsupported NTB configuration (%d)\n", ntb->conn_type));

 ntb->spad_count = ATOM_SPAD_COUNT;
 ntb->db_count = ATOM_DB_COUNT;
 ntb->db_vec_count = ATOM_DB_MSIX_VECTOR_COUNT;
 ntb->db_vec_shift = ATOM_DB_MSIX_VECTOR_SHIFT;
 ntb->db_valid_mask = (1ull << ntb->db_count) - 1;

 ntb->reg = &atom_reg;
 ntb->self_reg = &atom_pri_reg;
 ntb->peer_reg = &atom_b2b_reg;
 ntb->xlat_reg = &atom_sec_xlat;





 pci_write_config(ntb->device, 0xFC, 0x4, 4);

 configure_atom_secondary_side_bars(ntb);


 intel_ntb_reg_write(2, ATOM_SPCICMD_OFFSET,
     PCIM_CMD_MEMEN | PCIM_CMD_BUSMASTEREN);

 error = intel_ntb_init_isr(ntb);
 if (error != 0)
  return (error);


 intel_ntb_link_enable(ntb->device, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);

 callout_reset(&ntb->heartbeat_timer, 0, atom_link_hb, ntb);

 return (0);
}
