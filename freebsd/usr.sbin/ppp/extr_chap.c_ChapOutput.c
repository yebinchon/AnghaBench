
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef struct fsmheader {size_t code; size_t id; int length; } const fsmheader ;
typedef struct fsmheader u_char ;
struct physical {int link; TYPE_1__* dl; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int bundle; } ;


 scalar_t__ LINK_QUEUES (int *) ;
 int LogDEBUG ;
 int LogPHASE ;
 scalar_t__ MBUF_CTOP (struct mbuf*) ;
 int MB_CHAPOUT ;
 int PROTO_CHAP ;
 int * chapcodes ;
 int htons (int) ;
 int link_PushPacket (int *,struct mbuf*,int ,scalar_t__,int ) ;
 int log_DumpBp (int ,char*,struct mbuf*) ;
 int log_Printf (int ,char*,int ,...) ;
 struct mbuf* m_get (int,int ) ;
 int memcpy (scalar_t__,struct fsmheader const*,int) ;

__attribute__((used)) static void
ChapOutput(struct physical *physical, u_int code, u_int id,
    const u_char *ptr, int count, const char *text)
{
  int plen;
  struct fsmheader lh;
  struct mbuf *bp;

  plen = sizeof(struct fsmheader) + count;
  lh.code = code;
  lh.id = id;
  lh.length = htons(plen);
  bp = m_get(plen, MB_CHAPOUT);
  memcpy(MBUF_CTOP(bp), &lh, sizeof(struct fsmheader));
  if (count)
    memcpy(MBUF_CTOP(bp) + sizeof(struct fsmheader), ptr, count);
  log_DumpBp(LogDEBUG, "ChapOutput", bp);
  if (text == ((void*)0))
    log_Printf(LogPHASE, "Chap Output: %s\n", chapcodes[code]);
  else
    log_Printf(LogPHASE, "Chap Output: %s (%s)\n", chapcodes[code], text);
  link_PushPacket(&physical->link, bp, physical->dl->bundle,
                  LINK_QUEUES(&physical->link) - 1, PROTO_CHAP);
}
