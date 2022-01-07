
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct coredump_params {int comp; } ;


 int CORE_BUF_SIZE ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int bzero (char*,scalar_t__) ;
 int compressor_write (int ,char*,scalar_t__) ;
 int copyin (char*,char*,scalar_t__) ;

__attribute__((used)) static int
compress_chunk(struct coredump_params *p, char *base, char *buf, u_int len)
{
 u_int chunk_len;
 int error;

 while (len > 0) {
  chunk_len = MIN(len, CORE_BUF_SIZE);





  error = copyin(base, buf, chunk_len);
  if (error != 0)
   bzero(buf, chunk_len);
  error = compressor_write(p->comp, buf, chunk_len);
  if (error != 0)
   break;
  base += chunk_len;
  len -= chunk_len;
 }
 return (error);
}
