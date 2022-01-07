
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_buf {int size; int ac; int code; int data; } ;
struct wpi_vap {struct wpi_buf wv_bcbuf; } ;
struct wpi_cmd_beacon {int ofdm_mask; int cck_mask; void* flags; void* lifetime; int id; } ;


 int WPI_CMD_QUEUE_NUM ;
 int WPI_CMD_SET_BEACON ;
 int WPI_ID_BROADCAST ;
 int WPI_LIFETIME_INFINITE ;
 int WPI_TX_INSERT_TSTAMP ;
 int WPI_TX_NEED_ACK ;
 void* htole32 (int) ;

__attribute__((used)) static void
wpi_init_beacon(struct wpi_vap *wvp)
{
 struct wpi_buf *bcn = &wvp->wv_bcbuf;
 struct wpi_cmd_beacon *cmd = (struct wpi_cmd_beacon *)&bcn->data;

 cmd->id = WPI_ID_BROADCAST;
 cmd->ofdm_mask = 0xff;
 cmd->cck_mask = 0x0f;
 cmd->lifetime = htole32(WPI_LIFETIME_INFINITE);





 cmd->flags = htole32(WPI_TX_NEED_ACK | WPI_TX_INSERT_TSTAMP);

 bcn->code = WPI_CMD_SET_BEACON;
 bcn->ac = WPI_CMD_QUEUE_NUM;
 bcn->size = sizeof(struct wpi_cmd_beacon);
}
