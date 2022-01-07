
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_data; } ;


 int DONT_WRITEBACK (int) ;
 int KASSERT (int,char*) ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 scalar_t__ __predict_false (int ) ;
 int cvmx_fpa_free (int,int,int ) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 int printf (char*,int) ;

int cvm_oct_mem_fill_fpa(int pool, int size, int elements)
{
 int freed = elements;
 while (freed) {
  KASSERT(size <= MCLBYTES - 128, ("mbuf clusters are too small"));

  struct mbuf *m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (__predict_false(m == ((void*)0))) {
   printf("Failed to allocate mbuf for hardware pool %d\n", pool);
   break;
  }

  m->m_data += 128 - (((uintptr_t)m->m_data) & 0x7f);
  *(struct mbuf **)(m->m_data - sizeof(void *)) = m;
  cvmx_fpa_free(m->m_data, pool, DONT_WRITEBACK(size/128));
  freed--;
 }
 return (elements - freed);
}
