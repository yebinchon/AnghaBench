
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_7__ {int link; int af; } ;
struct TYPE_5__ {size_t his_mru; } ;
struct link {TYPE_1__ lcp; } ;
struct mp {size_t peer_mrru; TYPE_3__ out; struct link link; } ;
struct mbuf {scalar_t__ m_len; } ;
struct datalink {scalar_t__ state; struct datalink* next; TYPE_2__* physical; } ;
struct TYPE_8__ {struct mp mp; } ;
struct bundle {struct datalink* links; TYPE_4__ ncp; } ;
struct TYPE_6__ {struct link link; scalar_t__ out; } ;


 scalar_t__ DATALINK_OPEN ;
 int LogDEBUG ;
 int MBUF_CTOP (struct mbuf*) ;
 int MB_MPOUT ;
 struct mbuf* link_Dequeue (struct link*) ;
 size_t link_QueueLen (struct link*) ;
 int log_Printf (int ,char*) ;
 struct mbuf* m_get (size_t,int ) ;
 size_t m_length (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;
 struct mbuf* mbuf_Read (struct mbuf*,int ,scalar_t__) ;
 int mp_Output (struct mp*,struct bundle*,struct link*,struct mbuf*,int,int) ;
 int mp_QueueLen (struct mp*) ;
 int ncp_PushPacket (TYPE_4__*,int *,struct link*) ;

int
mp_FillPhysicalQueues(struct bundle *bundle)
{
  struct mp *mp = &bundle->ncp.mp;
  struct datalink *dl, *fdl;
  size_t total, add, len;
  int thislink, nlinks, nopenlinks, sendasip;
  u_int32_t begin, end;
  struct mbuf *m, *mo;
  struct link *bestlink;

  thislink = nlinks = nopenlinks = 0;
  for (fdl = ((void*)0), dl = bundle->links; dl; dl = dl->next) {

    if (!fdl) {
      if (thislink == mp->out.link)
        fdl = dl;
      else
        thislink++;
    }
    nlinks++;
    if (dl->state == DATALINK_OPEN)
      nopenlinks++;
  }

  if (!fdl) {
    fdl = bundle->links;
    if (!fdl)
      return 0;
    thislink = 0;
  }

  total = 0;
  for (dl = fdl; nlinks > 0; dl = dl->next, nlinks--, thislink++) {
    if (!dl) {
      dl = bundle->links;
      thislink = 0;
    }

    if (dl->state != DATALINK_OPEN)
      continue;

    if (dl->physical->out)

      continue;

    add = link_QueueLen(&dl->physical->link);
    if (add) {

      total += add;
      continue;
    }

    if (!mp_QueueLen(mp)) {
      int mrutoosmall;
      mrutoosmall = 0;
      sendasip = nopenlinks < 2;
      if (sendasip) {
        if (dl->physical->link.lcp.his_mru < mp->peer_mrru) {






          mrutoosmall = 1;
          sendasip = 0;
        }
      }

      bestlink = sendasip ? &dl->physical->link : &mp->link;
      if (!ncp_PushPacket(&bundle->ncp, &mp->out.af, bestlink))
        break;

      if (mrutoosmall)
        log_Printf(LogDEBUG, "Don't send data as PROTO_IP, MRU < MRRU\n");
      else if (sendasip)
        log_Printf(LogDEBUG, "Sending data as PROTO_IP, not PROTO_MP\n");

      if (sendasip) {
        add = link_QueueLen(&dl->physical->link);
        if (add) {

          total += add;
          continue;
        }
      }
    }

    m = link_Dequeue(&mp->link);
    if (m) {
      len = m_length(m);
      begin = 1;
      end = 0;

      while (!end) {
        if (dl->state == DATALINK_OPEN) {

          if (len <= dl->physical->link.lcp.his_mru) {
            mo = m;
            end = 1;
            m_settype(mo, MB_MPOUT);
          } else {

            mo = m_get(dl->physical->link.lcp.his_mru, MB_MPOUT);
            len -= mo->m_len;
            m = mbuf_Read(m, MBUF_CTOP(mo), mo->m_len);
          }
          mp_Output(mp, bundle, &dl->physical->link, mo, begin, end);
          begin = 0;
        }

        if (!end) {
          nlinks--;
          dl = dl->next;
          if (!dl) {
            dl = bundle->links;
            thislink = 0;
          } else
            thislink++;
        }
      }
    }
  }
  mp->out.link = thislink;

  return total;
}
