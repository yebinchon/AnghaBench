
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct mbuf {int m_len; struct mbuf* m_next; } ;


 int * MBUF_CTOP (struct mbuf*) ;
 int* fcstab ;
 int m_length (struct mbuf*) ;

__attribute__((used)) static inline u_short
HdlcFcsBuf(u_short fcs, struct mbuf *m)
{
  int len;
  u_char *pos, *end;

  len = m_length(m);
  pos = MBUF_CTOP(m);
  end = pos + m->m_len;
  while (len--) {
    fcs = (fcs >> 8) ^ fcstab[(fcs ^ *pos++) & 0xff];
    if (pos == end && len) {
      m = m->m_next;
      pos = MBUF_CTOP(m);
      end = pos + m->m_len;
    }
  }
  return (fcs);
}
