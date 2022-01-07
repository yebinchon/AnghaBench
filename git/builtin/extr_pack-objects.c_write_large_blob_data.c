
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct hashfile {int dummy; } ;
struct git_istream {int dummy; } ;
typedef int ssize_t ;
typedef int obuf ;
typedef int ibuf ;
struct TYPE_5__ {unsigned char* next_in; int avail_in; unsigned char* next_out; int avail_out; } ;
typedef TYPE_1__ git_zstream ;


 int Z_BUF_ERROR ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int _ (char*) ;
 int die (int ,int) ;
 int git_deflate (TYPE_1__*,int ) ;
 int git_deflate_end (TYPE_1__*) ;
 int git_deflate_init (TYPE_1__*,int ) ;
 int hashwrite (struct hashfile*,unsigned char*,int) ;
 int oid_to_hex (struct object_id const*) ;
 int pack_compression_level ;
 int read_istream (struct git_istream*,unsigned char*,int) ;

__attribute__((used)) static unsigned long write_large_blob_data(struct git_istream *st, struct hashfile *f,
        const struct object_id *oid)
{
 git_zstream stream;
 unsigned char ibuf[1024 * 16];
 unsigned char obuf[1024 * 16];
 unsigned long olen = 0;

 git_deflate_init(&stream, pack_compression_level);

 for (;;) {
  ssize_t readlen;
  int zret = Z_OK;
  readlen = read_istream(st, ibuf, sizeof(ibuf));
  if (readlen == -1)
   die(_("unable to read %s"), oid_to_hex(oid));

  stream.next_in = ibuf;
  stream.avail_in = readlen;
  while ((stream.avail_in || readlen == 0) &&
         (zret == Z_OK || zret == Z_BUF_ERROR)) {
   stream.next_out = obuf;
   stream.avail_out = sizeof(obuf);
   zret = git_deflate(&stream, readlen ? 0 : Z_FINISH);
   hashwrite(f, obuf, stream.next_out - obuf);
   olen += stream.next_out - obuf;
  }
  if (stream.avail_in)
   die(_("deflate error (%d)"), zret);
  if (readlen == 0) {
   if (zret != Z_STREAM_END)
    die(_("deflate error (%d)"), zret);
   break;
  }
 }
 git_deflate_end(&stream);
 return olen;
}
