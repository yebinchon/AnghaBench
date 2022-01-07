
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t avail_in; size_t avail_out; size_t const total_in; size_t const total_out; int * next_out; int * next_in; int * opaque; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int uint8_t ;


 int Z_DEFAULT_COMPRESSION ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_STREAM_END ;
 int check_err (int,char*) ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int ) ;
 int myalloc ;
 int myfree ;
 int printf (char*,size_t const,size_t const,size_t const) ;

size_t
block_deflate(uint8_t *uncompr, uint8_t *compr, const size_t len)
{
 z_stream c_stream;
 int err;

 if (len == 0)
  return (0);

 c_stream.zalloc = myalloc;
 c_stream.zfree = myfree;
 c_stream.opaque = ((void*)0);

 err = deflateInit(&c_stream, Z_DEFAULT_COMPRESSION);
 check_err(err, "deflateInit");

 c_stream.next_in = uncompr;
 c_stream.next_out = compr;
 c_stream.avail_in = len;
 c_stream.avail_out = len*2u +512u;

 while (c_stream.total_in != len && c_stream.total_out < (len*2u + 512u)) {
  err = deflate(&c_stream, Z_NO_FLUSH);



  check_err(err, "deflate(..., Z_NO_FLUSH)");
 }

 for (;;) {
  err = deflate(&c_stream, Z_FINISH);



  if (err == Z_STREAM_END) break;
  check_err(err, "deflate(..., Z_STREAM_END)");
 }

 err = deflateEnd(&c_stream);
 check_err(err, "deflateEnd");

 return ((size_t)c_stream.total_out);
}
