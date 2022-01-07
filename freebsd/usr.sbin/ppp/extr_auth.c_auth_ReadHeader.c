
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct mbuf {int dummy; } ;
struct TYPE_3__ {void* length; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct authinfo {TYPE_2__ in; } ;


 int LogWARN ;
 void* htons (int ) ;
 int log_Printf (int ,char*,int,size_t) ;
 int m_freem (struct mbuf*) ;
 size_t m_length (struct mbuf*) ;
 struct mbuf* mbuf_Read (struct mbuf*,int *,int) ;
 int ntohs (void*) ;

struct mbuf *
auth_ReadHeader(struct authinfo *authp, struct mbuf *bp)
{
  size_t len;

  len = m_length(bp);
  if (len >= sizeof authp->in.hdr) {
    bp = mbuf_Read(bp, (u_char *)&authp->in.hdr, sizeof authp->in.hdr);
    if (len >= ntohs(authp->in.hdr.length))
      return bp;
    authp->in.hdr.length = htons(0);
    log_Printf(LogWARN, "auth_ReadHeader: Short packet (%u > %zu) !\n",
               ntohs(authp->in.hdr.length), len);
  } else {
    authp->in.hdr.length = htons(0);
    log_Printf(LogWARN, "auth_ReadHeader: Short packet header (%u > %zu) !\n",
               (int)(sizeof authp->in.hdr), len);
  }

  m_freem(bp);
  return ((void*)0);
}
