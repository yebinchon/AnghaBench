
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct qXfer_context {int flushed; int lastmessage; int sb; int xfer_buf; scalar_t__ last_offset; } ;


 int ENOSPC ;
 scalar_t__ GDB_BUFSZ ;
 int SBUF_FIXEDLEN ;
 int qXfer_drain ;
 int sbuf_new (int *,int ,int,int ) ;
 int sbuf_set_drain (int *,int ,struct qXfer_context*) ;
 int ummin (int,scalar_t__) ;

__attribute__((used)) static int
init_qXfer_ctx(struct qXfer_context *qx, uintmax_t len)
{


 if (len < sizeof("$m#nn"))
  return (ENOSPC);

 len -= 4;
 len = ummin(len, GDB_BUFSZ - 1);

 qx->last_offset = 0;
 qx->flushed = 0;
 qx->lastmessage = 0;
 sbuf_new(&qx->sb, qx->xfer_buf, len, SBUF_FIXEDLEN);
 sbuf_set_drain(&qx->sb, qXfer_drain, qx);
 return (0);
}
