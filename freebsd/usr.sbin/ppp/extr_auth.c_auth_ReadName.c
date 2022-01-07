
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {char* name; } ;
struct authinfo {TYPE_1__ in; } ;


 int LogWARN ;
 int log_Printf (int ,char*,size_t,...) ;
 int m_freem (struct mbuf*) ;
 size_t m_length (struct mbuf*) ;
 struct mbuf* mbuf_Read (struct mbuf*,int *,size_t) ;

struct mbuf *
auth_ReadName(struct authinfo *authp, struct mbuf *bp, size_t len)
{
  if (len > sizeof authp->in.name - 1)
    log_Printf(LogWARN, "auth_ReadName: Name too long (%zu) !\n", len);
  else {
    size_t mlen = m_length(bp);

    if (len > mlen)
      log_Printf(LogWARN, "auth_ReadName: Short packet (%zu > %zu) !\n",
                 len, mlen);
    else {
      bp = mbuf_Read(bp, (u_char *)authp->in.name, len);
      authp->in.name[len] = '\0';
      return bp;
    }
  }

  *authp->in.name = '\0';
  m_freem(bp);
  return ((void*)0);
}
