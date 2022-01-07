
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct image {int nr; size_t len; char* buf; TYPE_1__* line; TYPE_1__* line_allocated; } ;
struct apply_state {int allow_overlap; } ;
struct TYPE_6__ {int flag; scalar_t__ len; } ;


 int COPY_ARRAY (TYPE_1__*,TYPE_1__*,int) ;
 int LINE_PATCHED ;
 int MOVE_ARRAY (TYPE_1__*,TYPE_1__*,int) ;
 int REALLOC_ARRAY (TYPE_1__*,int) ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 int st_add3 (int ,size_t,int) ;
 int st_sub (size_t,size_t) ;
 char* xmalloc (int ) ;

__attribute__((used)) static void update_image(struct apply_state *state,
    struct image *img,
    int applied_pos,
    struct image *preimage,
    struct image *postimage)
{




 int i, nr;
 size_t remove_count, insert_count, applied_at = 0;
 char *result;
 int preimage_limit;
 preimage_limit = preimage->nr;
 if (preimage_limit > img->nr - applied_pos)
  preimage_limit = img->nr - applied_pos;

 for (i = 0; i < applied_pos; i++)
  applied_at += img->line[i].len;

 remove_count = 0;
 for (i = 0; i < preimage_limit; i++)
  remove_count += img->line[applied_pos + i].len;
 insert_count = postimage->len;


 result = xmalloc(st_add3(st_sub(img->len, remove_count), insert_count, 1));
 memcpy(result, img->buf, applied_at);
 memcpy(result + applied_at, postimage->buf, postimage->len);
 memcpy(result + applied_at + postimage->len,
        img->buf + (applied_at + remove_count),
        img->len - (applied_at + remove_count));
 free(img->buf);
 img->buf = result;
 img->len += insert_count - remove_count;
 result[img->len] = '\0';


 nr = img->nr + postimage->nr - preimage_limit;
 if (preimage_limit < postimage->nr) {




  REALLOC_ARRAY(img->line, nr);
  img->line_allocated = img->line;
 }
 if (preimage_limit != postimage->nr)
  MOVE_ARRAY(img->line + applied_pos + postimage->nr,
      img->line + applied_pos + preimage_limit,
      img->nr - (applied_pos + preimage_limit));
 COPY_ARRAY(img->line + applied_pos, postimage->line, postimage->nr);
 if (!state->allow_overlap)
  for (i = 0; i < postimage->nr; i++)
   img->line[applied_pos + i].flag |= LINE_PATCHED;
 img->nr = nr;
}
