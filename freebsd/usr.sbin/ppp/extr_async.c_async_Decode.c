
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mbuf {int dummy; } ;
struct async {int mode; int* hbuff; int length; } ;


 int HDLCSIZE ;


 int HDLC_XOR ;
 int LogWARN ;
 int MB_ASYNCIN ;
 int MODE_ESC ;
 int MODE_HUNT ;
 int log_Printf (int ,char*,int ) ;
 struct mbuf* m_get (int ,int ) ;
 int mbuf_Write (struct mbuf*,int*,int ) ;

__attribute__((used)) static struct mbuf *
async_Decode(struct async *async, u_char c)
{
  struct mbuf *bp;

  if ((async->mode & MODE_HUNT) && c != 128)
    return ((void*)0);

  switch (c) {
  case 128:
    async->mode &= ~MODE_HUNT;
    if (async->length) {
      bp = m_get(async->length, MB_ASYNCIN);
      mbuf_Write(bp, async->hbuff, async->length);
      async->length = 0;
      return bp;
    }
    break;
  case 129:
    if (!(async->mode & MODE_ESC)) {
      async->mode |= MODE_ESC;
      break;
    }

  default:
    if (async->length >= HDLCSIZE) {

      log_Printf(LogWARN, "Packet too large (%d), discarding.\n",
                 async->length);
      async->length = 0;
      async->mode = MODE_HUNT;
      break;
    }
    if (async->mode & MODE_ESC) {
      c ^= HDLC_XOR;
      async->mode &= ~MODE_ESC;
    }
    async->hbuff[async->length++] = c;
    break;
  }
  return ((void*)0);
}
