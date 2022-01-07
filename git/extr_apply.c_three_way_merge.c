
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct image {int len; scalar_t__ buf; } ;
struct apply_state {TYPE_1__* repo; } ;
struct TYPE_10__ {scalar_t__ ptr; } ;
typedef TYPE_2__ mmfile_t ;
struct TYPE_11__ {int size; scalar_t__ ptr; int * member_0; } ;
typedef TYPE_3__ mmbuffer_t ;
struct TYPE_9__ {int index; } ;


 int clear_image (struct image*) ;
 int free (scalar_t__) ;
 int ll_merge (TYPE_3__*,char*,TYPE_2__*,char*,TYPE_2__*,char*,TYPE_2__*,char*,int ,int *) ;
 int read_mmblob (TYPE_2__*,struct object_id const*) ;

__attribute__((used)) static int three_way_merge(struct apply_state *state,
      struct image *image,
      char *path,
      const struct object_id *base,
      const struct object_id *ours,
      const struct object_id *theirs)
{
 mmfile_t base_file, our_file, their_file;
 mmbuffer_t result = { ((void*)0) };
 int status;

 read_mmblob(&base_file, base);
 read_mmblob(&our_file, ours);
 read_mmblob(&their_file, theirs);
 status = ll_merge(&result, path,
     &base_file, "base",
     &our_file, "ours",
     &their_file, "theirs",
     state->repo->index,
     ((void*)0));
 free(base_file.ptr);
 free(our_file.ptr);
 free(their_file.ptr);
 if (status < 0 || !result.ptr) {
  free(result.ptr);
  return -1;
 }
 clear_image(image);
 image->buf = result.ptr;
 image->len = result.size;

 return status;
}
