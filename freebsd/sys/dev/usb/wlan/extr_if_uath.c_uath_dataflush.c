
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_tx_desc {scalar_t__ msgid; void* flags; void* connid; void* txqid; void* type; void* msglen; } ;
struct uath_softc {int sc_debug; int sc_tx_timer; int * sc_xfer; int sc_tx_pending; int sc_msgid; } ;
struct uath_data {int buflen; scalar_t__ buf; int * ni; int * m; } ;
struct uath_chunk {int length; int flags; scalar_t__ seqnum; } ;


 int DPRINTF (struct uath_softc*,int ,char*,scalar_t__) ;
 int ENOBUFS ;
 int STAILQ_INSERT_TAIL (int *,struct uath_data*,int ) ;
 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 size_t UATH_BULK_TX ;
 int UATH_CFLAGS_FINAL ;
 int UATH_DEBUG_CMDS ;
 int UATH_DEBUG_CMDS_DUMP ;
 int UATH_DEBUG_RESET ;
 int UATH_STAT_INC (struct uath_softc*,int ) ;
 int WDCMSG_FLUSH ;
 int htobe16 (int) ;
 void* htobe32 (int) ;
 int memset (struct uath_tx_desc*,int ,int) ;
 int next ;
 int st_tx_pending ;
 int uath_dump_cmd (scalar_t__,int,char) ;
 struct uath_data* uath_getbuf (struct uath_softc*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
uath_dataflush(struct uath_softc *sc)
{
 struct uath_data *data;
 struct uath_chunk *chunk;
 struct uath_tx_desc *desc;

 UATH_ASSERT_LOCKED(sc);

 data = uath_getbuf(sc);
 if (data == ((void*)0))
  return (ENOBUFS);
 data->buflen = sizeof(struct uath_chunk) + sizeof(struct uath_tx_desc);
 data->m = ((void*)0);
 data->ni = ((void*)0);
 chunk = (struct uath_chunk *)data->buf;
 desc = (struct uath_tx_desc *)(chunk + 1);


 chunk->seqnum = 0;
 chunk->flags = UATH_CFLAGS_FINAL;
 chunk->length = htobe16(sizeof (struct uath_tx_desc));

 memset(desc, 0, sizeof(struct uath_tx_desc));
 desc->msglen = htobe32(sizeof(struct uath_tx_desc));
 desc->msgid = (sc->sc_msgid++) + 1;
 desc->type = htobe32(WDCMSG_FLUSH);
 desc->txqid = htobe32(0);
 desc->connid = htobe32(0);
 desc->flags = htobe32(0);
 STAILQ_INSERT_TAIL(&sc->sc_tx_pending, data, next);
 UATH_STAT_INC(sc, st_tx_pending);
 sc->sc_tx_timer = 5;
 usbd_transfer_start(sc->sc_xfer[UATH_BULK_TX]);

 return (0);
}
