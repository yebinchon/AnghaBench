
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int stream ;
struct TYPE_6__ {unsigned long avail_out; void* avail_in; unsigned long total_out; void* next_in; void* next_out; } ;
typedef TYPE_1__ git_zstream ;


 int FREE_AND_NULL (void*) ;
 int Z_OK ;
 int Z_STREAM_END ;
 int error (char*,int) ;
 int exit (int) ;
 void* fill (int) ;
 int git_inflate (TYPE_1__*,int ) ;
 int git_inflate_end (TYPE_1__*) ;
 int git_inflate_init (TYPE_1__*) ;
 int has_errors ;
 void* len ;
 int memset (TYPE_1__*,int ,int) ;
 int recover ;
 int use (void*) ;
 void* xmallocz (unsigned long) ;

__attribute__((used)) static void *get_data(unsigned long size)
{
 git_zstream stream;
 void *buf = xmallocz(size);

 memset(&stream, 0, sizeof(stream));

 stream.next_out = buf;
 stream.avail_out = size;
 stream.next_in = fill(1);
 stream.avail_in = len;
 git_inflate_init(&stream);

 for (;;) {
  int ret = git_inflate(&stream, 0);
  use(len - stream.avail_in);
  if (stream.total_out == size && ret == Z_STREAM_END)
   break;
  if (ret != Z_OK) {
   error("inflate returned %d", ret);
   FREE_AND_NULL(buf);
   if (!recover)
    exit(1);
   has_errors = 1;
   break;
  }
  stream.next_in = fill(1);
  stream.avail_in = len;
 }
 git_inflate_end(&stream);
 return buf;
}
