
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long avail_in; unsigned long avail_out; unsigned long total_out; void* next_out; void* next_in; } ;
typedef TYPE_1__ git_zstream ;


 int Z_FINISH ;
 scalar_t__ Z_OK ;
 int free (void*) ;
 scalar_t__ git_deflate (TYPE_1__*,int ) ;
 unsigned long git_deflate_bound (TYPE_1__*,unsigned long) ;
 int git_deflate_end (TYPE_1__*) ;
 int git_deflate_init (TYPE_1__*,int ) ;
 int pack_compression_level ;
 void* xmalloc (unsigned long) ;

__attribute__((used)) static unsigned long do_compress(void **pptr, unsigned long size)
{
 git_zstream stream;
 void *in, *out;
 unsigned long maxsize;

 git_deflate_init(&stream, pack_compression_level);
 maxsize = git_deflate_bound(&stream, size);

 in = *pptr;
 out = xmalloc(maxsize);
 *pptr = out;

 stream.next_in = in;
 stream.avail_in = size;
 stream.next_out = out;
 stream.avail_out = maxsize;
 while (git_deflate(&stream, Z_FINISH) == Z_OK)
  ;
 git_deflate_end(&stream);

 free(in);
 return stream.total_out;
}
