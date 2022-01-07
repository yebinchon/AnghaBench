
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {struct an_reply* an_dma_vaddr; int an_dma_paddr; } ;
struct an_softc {TYPE_1__ an_rid_buffer; int mpi350; struct ifnet* an_ifp; } ;
struct an_reply {int an_cmd; int an_status; int an_resp2; int an_resp1; int an_resp0; int an_parm0; } ;
struct an_ltv_gen {int an_len; int an_val; int an_type; } ;
struct an_command {int an_cmd; int an_status; int an_resp2; int an_resp1; int an_resp0; int an_parm0; } ;
struct an_card_rid_desc {int an_valid; int an_len; int an_phys; scalar_t__ an_rid; } ;
typedef int reply ;
typedef int cmd ;
typedef int an_rid_desc ;


 int AN_ACCESS_READ ;
 int AN_BAP1 ;
 int AN_CMD_ACCESS ;
 int AN_CMD_QUAL_MASK ;
 int AN_DATA1 ;
 scalar_t__ AN_HOST_DESC_OFFSET ;
 int AN_LOCK_ASSERT (struct an_softc*) ;
 int AN_RID_BUFFER_SIZE ;
 int CSR_MEM_AUX_WRITE_4 (struct an_softc*,scalar_t__,int ) ;
 int CSR_READ_1 (struct an_softc*,int ) ;
 void* CSR_READ_2 (struct an_softc*,int ) ;
 int EINVAL ;
 int EIO ;
 scalar_t__ an_cmd (struct an_softc*,int,int ) ;
 scalar_t__ an_cmd_struct (struct an_softc*,struct an_reply*,struct an_reply*) ;
 scalar_t__ an_dump ;
 int an_dump_record (struct an_softc*,struct an_ltv_gen*,char*) ;
 scalar_t__ an_seek (struct an_softc*,int ,int ,int ) ;
 int bcopy (int *,int *,int) ;
 int bzero (struct an_reply*,int) ;
 int if_printf (struct ifnet*,char*,...) ;

__attribute__((used)) static int
an_read_record(struct an_softc *sc, struct an_ltv_gen *ltv)
{
 struct an_ltv_gen *an_ltv;
 struct an_card_rid_desc an_rid_desc;
 struct an_command cmd;
 struct an_reply reply;
 struct ifnet *ifp;
 u_int16_t *ptr;
 u_int8_t *ptr2;
 int i, len;

 AN_LOCK_ASSERT(sc);
 if (ltv->an_len < 4 || ltv->an_type == 0)
  return(EINVAL);

 ifp = sc->an_ifp;
 if (!sc->mpi350){

  if (an_cmd(sc, AN_CMD_ACCESS|AN_ACCESS_READ, ltv->an_type)) {
   if_printf(ifp, "RID access failed\n");
   return(EIO);
  }


  if (an_seek(sc, ltv->an_type, 0, AN_BAP1)) {
   if_printf(ifp, "seek to record failed\n");
   return(EIO);
  }







  len = CSR_READ_2(sc, AN_DATA1);
  if (len > (ltv->an_len - 2)) {
   if_printf(ifp, "record length mismatch -- expected %d, "
          "got %d for Rid %x\n",
          ltv->an_len - 2, len, ltv->an_type);
   len = ltv->an_len - 2;
  } else {
   ltv->an_len = len + 2;
  }


  len -= 2;
  ptr = &ltv->an_val;
  for (i = len; i > 1; i -= 2)
   *ptr++ = CSR_READ_2(sc, AN_DATA1);
  if (i) {
   ptr2 = (u_int8_t *)ptr;
   *ptr2 = CSR_READ_1(sc, AN_DATA1);
  }
 } else {
  if (!sc->an_rid_buffer.an_dma_vaddr)
   return(EIO);
  an_rid_desc.an_valid = 1;
  an_rid_desc.an_len = AN_RID_BUFFER_SIZE;
  an_rid_desc.an_rid = 0;
  an_rid_desc.an_phys = sc->an_rid_buffer.an_dma_paddr;
  bzero(sc->an_rid_buffer.an_dma_vaddr, AN_RID_BUFFER_SIZE);

  bzero(&cmd, sizeof(cmd));
  bzero(&reply, sizeof(reply));
  cmd.an_cmd = AN_CMD_ACCESS|AN_ACCESS_READ;
  cmd.an_parm0 = ltv->an_type;

  for (i = 0; i < sizeof(an_rid_desc) / 4; i++)
   CSR_MEM_AUX_WRITE_4(sc, AN_HOST_DESC_OFFSET + i * 4,
       ((u_int32_t *)(void *)&an_rid_desc)[i]);

  if (an_cmd_struct(sc, &cmd, &reply)
      || reply.an_status & AN_CMD_QUAL_MASK) {
   if_printf(ifp, "failed to read RID %x %x %x %x %x, %d\n",
          ltv->an_type,
          reply.an_status,
          reply.an_resp0,
          reply.an_resp1,
          reply.an_resp2,
          i);
   return(EIO);
  }

  an_ltv = (struct an_ltv_gen *)sc->an_rid_buffer.an_dma_vaddr;
  if (an_ltv->an_len + 2 < an_rid_desc.an_len) {
   an_rid_desc.an_len = an_ltv->an_len;
  }

  len = an_rid_desc.an_len;
  if (len > (ltv->an_len - 2)) {
   if_printf(ifp, "record length mismatch -- expected %d, "
          "got %d for Rid %x\n",
          ltv->an_len - 2, len, ltv->an_type);
   len = ltv->an_len - 2;
  } else {
   ltv->an_len = len + 2;
  }
  bcopy(&an_ltv->an_type,
      &ltv->an_val,
      len);
 }

 if (an_dump)
  an_dump_record(sc, ltv, "Read");

 return(0);
}
