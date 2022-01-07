
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ allow_textconv; } ;
struct diff_options {int repo; TYPE_1__ flags; } ;
struct TYPE_5__ {unsigned long size; int ptr; } ;
struct blame_origin {TYPE_2__ file; int path; int blob_oid; int mode; } ;
typedef TYPE_2__ mmfile_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int die (char*,int ,int ) ;
 int fill_origin_fingerprints (struct blame_origin*) ;
 int oid_to_hex (int *) ;
 int read_object_file (int *,int*,unsigned long*) ;
 scalar_t__ textconv_object (int ,int ,int ,int *,int,int *,unsigned long*) ;

__attribute__((used)) static void fill_origin_blob(struct diff_options *opt,
        struct blame_origin *o, mmfile_t *file,
        int *num_read_blob, int fill_fingerprints)
{
 if (!o->file.ptr) {
  enum object_type type;
  unsigned long file_size;

  (*num_read_blob)++;
  if (opt->flags.allow_textconv &&
      textconv_object(opt->repo, o->path, o->mode,
        &o->blob_oid, 1, &file->ptr, &file_size))
   ;
  else
   file->ptr = read_object_file(&o->blob_oid, &type,
           &file_size);
  file->size = file_size;

  if (!file->ptr)
   die("Cannot read blob %s for path %s",
       oid_to_hex(&o->blob_oid),
       o->path);
  o->file = *file;
 }
 else
  *file = o->file;
 if (fill_fingerprints)
  fill_origin_fingerprints(o);
}
