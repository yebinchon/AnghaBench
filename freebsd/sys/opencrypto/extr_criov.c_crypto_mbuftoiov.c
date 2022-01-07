
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; int m_len; int m_data; } ;
struct iovec {int iov_len; int iov_base; } ;


 int ENOMEM ;
 int KASSERT (int,char*) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 struct iovec* malloc (int,int ,int ) ;
 int memcpy (struct iovec*,struct iovec*,int) ;

int
crypto_mbuftoiov(struct mbuf *mbuf, struct iovec **iovptr, int *cnt,
    int *allocated)
{
 struct iovec *iov;
 struct mbuf *m, *mtmp;
 int i, j;

 *allocated = 0;
 iov = *iovptr;
 if (iov == ((void*)0))
  *cnt = 0;

 m = mbuf;
 i = 0;
 while (m != ((void*)0)) {
  if (i == *cnt) {

   j = 1;
   mtmp = m;
   while ((mtmp = mtmp->m_next) != ((void*)0))
    j++;
   iov = malloc(sizeof *iov * (i + j), M_CRYPTO_DATA,
       M_NOWAIT);
   if (iov == ((void*)0))
    return ENOMEM;
   *allocated = 1;
   *cnt = i + j;
   memcpy(iov, *iovptr, sizeof *iov * i);
  }

  iov[i].iov_base = m->m_data;
  iov[i].iov_len = m->m_len;

  i++;
  m = m->m_next;
 }

 if (*allocated)
  KASSERT(*cnt == i, ("did not allocate correct amount: %d != %d",
      *cnt, i));

 *iovptr = iov;
 *cnt = i;
 return 0;
}
