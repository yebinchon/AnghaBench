
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ustar_header {int name; int * typeflag; } ;
struct strbuf {int len; struct ustar_header* buf; } ;
struct object_id {int dummy; } ;
struct archiver_args {int time; struct object_id* commit_oid; } ;
typedef int header ;
struct TYPE_2__ {int hexsz; } ;


 struct strbuf STRBUF_INIT ;
 int TYPEFLAG_GLOBAL_HEADER ;
 int USTAR_MAX_MTIME ;
 int memset (struct ustar_header*,int ,int) ;
 int oid_to_hex (struct object_id const*) ;
 int prepare_header (struct archiver_args*,struct ustar_header*,unsigned int,int) ;
 int strbuf_append_ext_header (struct strbuf*,char*,int ,int ) ;
 int strbuf_append_ext_header_uint (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_1__* the_hash_algo ;
 int write_blocked (struct ustar_header*,int) ;
 int xsnprintf (int ,int,char*) ;

__attribute__((used)) static void write_global_extended_header(struct archiver_args *args)
{
 const struct object_id *oid = args->commit_oid;
 struct strbuf ext_header = STRBUF_INIT;
 struct ustar_header header;
 unsigned int mode;

 if (oid)
  strbuf_append_ext_header(&ext_header, "comment",
      oid_to_hex(oid),
      the_hash_algo->hexsz);
 if (args->time > USTAR_MAX_MTIME) {
  strbuf_append_ext_header_uint(&ext_header, "mtime",
           args->time);
  args->time = USTAR_MAX_MTIME;
 }

 if (!ext_header.len)
  return;

 memset(&header, 0, sizeof(header));
 *header.typeflag = TYPEFLAG_GLOBAL_HEADER;
 mode = 0100666;
 xsnprintf(header.name, sizeof(header.name), "pax_global_header");
 prepare_header(args, &header, mode, ext_header.len);
 write_blocked(&header, sizeof(header));
 write_blocked(ext_header.buf, ext_header.len);
 strbuf_release(&ext_header);
}
