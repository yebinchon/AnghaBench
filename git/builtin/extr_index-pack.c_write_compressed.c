
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct hashfile {int dummy; } ;
typedef int outbuf ;
struct TYPE_5__ {unsigned int avail_in; unsigned char* next_out; int avail_out; unsigned int total_out; void* next_in; } ;
typedef TYPE_1__ git_zstream ;


 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int _ (char*) ;
 int die (int ,int) ;
 int git_deflate (TYPE_1__*,int ) ;
 int git_deflate_end (TYPE_1__*) ;
 int git_deflate_init (TYPE_1__*,int ) ;
 int hashwrite (struct hashfile*,unsigned char*,int) ;
 int zlib_compression_level ;

__attribute__((used)) static int write_compressed(struct hashfile *f, void *in, unsigned int size)
{
 git_zstream stream;
 int status;
 unsigned char outbuf[4096];

 git_deflate_init(&stream, zlib_compression_level);
 stream.next_in = in;
 stream.avail_in = size;

 do {
  stream.next_out = outbuf;
  stream.avail_out = sizeof(outbuf);
  status = git_deflate(&stream, Z_FINISH);
  hashwrite(f, outbuf, sizeof(outbuf) - stream.avail_out);
 } while (status == Z_OK);

 if (status != Z_STREAM_END)
  die(_("unable to deflate appended object (%d)"), status);
 size = stream.total_out;
 git_deflate_end(&stream);
 return size;
}
