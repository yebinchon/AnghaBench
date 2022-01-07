
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockbuf {int sb_mcnt; int sb_ccnt; int sb_mbcnt; int sb_ctl; int sb_acc; struct mbuf* sb_fnrdy; int sb_ccc; } ;
struct TYPE_2__ {scalar_t__ ext_size; } ;
struct mbuf {int m_flags; scalar_t__ m_type; TYPE_1__ m_ext; scalar_t__ m_len; } ;


 scalar_t__ MSIZE ;
 scalar_t__ MT_DATA ;
 scalar_t__ MT_OOBDATA ;
 int M_BLOCKED ;
 int M_EXT ;
 int M_NOTREADY ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;

void
sballoc(struct sockbuf *sb, struct mbuf *m)
{

 SOCKBUF_LOCK_ASSERT(sb);

 sb->sb_ccc += m->m_len;

 if (sb->sb_fnrdy == ((void*)0)) {
  if (m->m_flags & M_NOTREADY)
   sb->sb_fnrdy = m;
  else
   sb->sb_acc += m->m_len;
 } else
  m->m_flags |= M_BLOCKED;

 if (m->m_type != MT_DATA && m->m_type != MT_OOBDATA)
  sb->sb_ctl += m->m_len;

 sb->sb_mbcnt += MSIZE;
 sb->sb_mcnt += 1;

 if (m->m_flags & M_EXT) {
  sb->sb_mbcnt += m->m_ext.ext_size;
  sb->sb_ccnt += 1;
 }
}
