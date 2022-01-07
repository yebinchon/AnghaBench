
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; int * m_next; } ;
struct coalesce_info {int count; int nbytes; } ;



__attribute__((used)) static int
coalesce_check(struct mbuf *m, void *arg)
{
 struct coalesce_info *ci = arg;
 int *count = &ci->count;
 int *nbytes = &ci->nbytes;

 if ((*nbytes == 0) || ((*nbytes + m->m_len <= 10500) &&
  (*count < 7) && (m->m_next == ((void*)0)))) {
  *count += 1;
  *nbytes += m->m_len;
  return (1);
 }
 return (0);
}
