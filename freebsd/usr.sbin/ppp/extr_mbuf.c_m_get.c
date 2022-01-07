
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct mbuf {size_t m_size; size_t m_len; int m_type; } ;
struct TYPE_4__ {scalar_t__ count; struct mbucket* next; } ;
struct TYPE_5__ {TYPE_1__ f; struct mbuf m; } ;
struct mbucket {TYPE_2__ u; } ;
struct TYPE_6__ {size_t octets; int fragments; } ;


 int AbortProgram (int ) ;
 size_t BUCKET_CHUNK ;
 int EX_OSERR ;
 int LogALERT ;
 int LogERROR ;
 int MB_MAX ;
 int MB_UNKNOWN ;
 struct mbucket** M_BUCKET (size_t) ;
 size_t M_MAXLEN ;
 size_t M_ROUNDUP (size_t) ;
 TYPE_3__* MemMap ;
 int log_Printf (int ,char*,unsigned long,...) ;
 scalar_t__ malloc (size_t) ;
 int mbuf_Mallocs ;
 int mbuftype (int) ;
 int memset (struct mbuf*,char,int) ;

struct mbuf *
m_get(size_t m_len, int type)
{
  struct mbucket **mb;
  struct mbuf *bp;
  size_t size;

  if (type > MB_MAX) {
    log_Printf(LogERROR, "Bad mbuf type %d\n", type);
    type = MB_UNKNOWN;
  }

  if (m_len > M_MAXLEN || m_len == 0) {
    log_Printf(LogERROR, "Request for mbuf size %lu (\"%s\") denied !\n",
               (u_long)m_len, mbuftype(type));
    AbortProgram(EX_OSERR);
  }

  mb = M_BUCKET(m_len);
  size = M_ROUNDUP(m_len);

  if (*mb) {

    bp = &(*mb)->u.m;
    if (--(*mb)->u.f.count == 0)
      *mb = (*mb)->u.f.next;
    else {
      ((struct mbucket *)((char *)*mb + size))->u.f.count = (*mb)->u.f.count;
      *mb = (struct mbucket *)((char *)*mb + size);
      (*mb)->u.f.next = ((void*)0);
    }
  } else {




    *mb = (struct mbucket *)malloc(BUCKET_CHUNK * size);
    if (*mb == ((void*)0)) {
      log_Printf(LogALERT, "Failed to allocate memory (%lu)\n",
                 (unsigned long)BUCKET_CHUNK * size);
      AbortProgram(EX_OSERR);
    }
    bp = &(*mb)->u.m;
    *mb = (struct mbucket *)((char *)*mb + size);
    (*mb)->u.f.count = BUCKET_CHUNK - 1;
    (*mb)->u.f.next = ((void*)0);
  }

  mbuf_Mallocs++;

  memset(bp, '\0', sizeof(struct mbuf));
  bp->m_size = size - sizeof *bp;
  bp->m_len = m_len;
  bp->m_type = type;

  MemMap[type].fragments++;
  MemMap[type].octets += bp->m_size;

  return bp;
}
