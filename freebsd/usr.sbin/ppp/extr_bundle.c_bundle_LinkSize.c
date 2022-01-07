
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; int * iov_base; } ;


 int LogERROR ;
 int SCATTER_SEGMENTS ;
 int Version ;
 int datalink2iov (int *,struct iovec*,int*,int,int *,int *) ;
 int log_Printf (int ,char*) ;
 scalar_t__ strlen (int ) ;

int
bundle_LinkSize()
{
  struct iovec iov[SCATTER_SEGMENTS];
  int niov, expect, f;

  iov[0].iov_len = strlen(Version) + 1;
  iov[0].iov_base = ((void*)0);
  niov = 1;
  if (datalink2iov(((void*)0), iov, &niov, SCATTER_SEGMENTS, ((void*)0), ((void*)0)) == -1) {
    log_Printf(LogERROR, "Cannot determine space required for link\n");
    return 0;
  }

  for (f = expect = 0; f < niov; f++)
    expect += iov[f].iov_len;

  return expect;
}
