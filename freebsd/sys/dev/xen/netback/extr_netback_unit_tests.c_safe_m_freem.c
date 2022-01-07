
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static inline void safe_m_freem(struct mbuf **ppMbuf) {
 if (*ppMbuf != ((void*)0)) {
  m_freem(*ppMbuf);
  *ppMbuf = ((void*)0);
 }
}
