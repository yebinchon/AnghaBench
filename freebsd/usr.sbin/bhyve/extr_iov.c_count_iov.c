
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; } ;



size_t
count_iov(const struct iovec *iov, int niov)
{
 size_t total = 0;
 int i;

 for (i = 0; i < niov; i++)
  total += iov[i].iov_len;

 return (total);
}
