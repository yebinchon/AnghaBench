
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bulk_checkin_state {scalar_t__ offset; int f; scalar_t__ nr_written; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef int obuf ;
typedef int ibuf ;
struct TYPE_7__ {unsigned char* next_out; int avail_out; unsigned char* next_in; scalar_t__ avail_in; } ;
typedef TYPE_1__ git_zstream ;
typedef int git_hash_ctx ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_8__ {int (* update_fn ) (int *,unsigned char*,size_t) ;} ;


 unsigned int HASH_WRITE_OBJECT ;

 int Z_FINISH ;


 int die (char*,int,...) ;
 int die_errno (char*,char const*) ;
 unsigned int encode_in_pack_object_header (unsigned char*,int,int,size_t) ;
 int git_deflate (TYPE_1__*,int ) ;
 int git_deflate_abort (TYPE_1__*) ;
 int git_deflate_end (TYPE_1__*) ;
 int git_deflate_init (TYPE_1__*,int ) ;
 int hashwrite (int ,unsigned char*,size_t) ;
 int pack_compression_level ;
 scalar_t__ pack_size_limit_cfg ;
 scalar_t__ read_in_full (int,unsigned char*,scalar_t__) ;
 int stub1 (int *,unsigned char*,size_t) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static int stream_to_pack(struct bulk_checkin_state *state,
     git_hash_ctx *ctx, off_t *already_hashed_to,
     int fd, size_t size, enum object_type type,
     const char *path, unsigned flags)
{
 git_zstream s;
 unsigned char obuf[16384];
 unsigned hdrlen;
 int status = 129;
 int write_object = (flags & HASH_WRITE_OBJECT);
 off_t offset = 0;

 git_deflate_init(&s, pack_compression_level);

 hdrlen = encode_in_pack_object_header(obuf, sizeof(obuf), type, size);
 s.next_out = obuf + hdrlen;
 s.avail_out = sizeof(obuf) - hdrlen;

 while (status != 128) {
  unsigned char ibuf[16384];

  if (size && !s.avail_in) {
   ssize_t rsize = size < sizeof(ibuf) ? size : sizeof(ibuf);
   ssize_t read_result = read_in_full(fd, ibuf, rsize);
   if (read_result < 0)
    die_errno("failed to read from '%s'", path);
   if (read_result != rsize)
    die("failed to read %d bytes from '%s'",
        (int)rsize, path);
   offset += rsize;
   if (*already_hashed_to < offset) {
    size_t hsize = offset - *already_hashed_to;
    if (rsize < hsize)
     hsize = rsize;
    if (hsize)
     the_hash_algo->update_fn(ctx, ibuf, hsize);
    *already_hashed_to = offset;
   }
   s.next_in = ibuf;
   s.avail_in = rsize;
   size -= rsize;
  }

  status = git_deflate(&s, size ? 0 : Z_FINISH);

  if (!s.avail_out || status == 128) {
   if (write_object) {
    size_t written = s.next_out - obuf;


    if (state->nr_written &&
        pack_size_limit_cfg &&
        pack_size_limit_cfg < state->offset + written) {
     git_deflate_abort(&s);
     return -1;
    }

    hashwrite(state->f, obuf, written);
    state->offset += written;
   }
   s.next_out = obuf;
   s.avail_out = sizeof(obuf);
  }

  switch (status) {
  case 129:
  case 130:
  case 128:
   continue;
  default:
   die("unexpected deflate failure: %d", status);
  }
 }
 git_deflate_end(&s);
 return 0;
}
