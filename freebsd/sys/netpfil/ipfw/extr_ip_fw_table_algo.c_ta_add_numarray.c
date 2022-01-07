
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tentry_info {int value; int flags; } ;
struct table_info {scalar_t__ data; } ;
struct TYPE_2__ {int value; int number; } ;
struct ta_buf_numarray {TYPE_1__ na; } ;
struct numarray_cfg {scalar_t__ used; int main_ptr; } ;
struct numarray {int value; } ;


 int EEXIST ;
 int EFBIG ;
 int KASSERT (int,char*) ;
 int TEI_FLAGS_DONTADD ;
 int TEI_FLAGS_UPDATE ;
 int TEI_FLAGS_UPDATED ;
 int badd (int *,TYPE_1__*,int ,scalar_t__,int,int ) ;
 int compare_numarray ;
 struct numarray* numarray_find (struct table_info*,int *) ;

__attribute__((used)) static int
ta_add_numarray(void *ta_state, struct table_info *ti, struct tentry_info *tei,
    void *ta_buf, uint32_t *pnum)
{
 struct numarray_cfg *cfg;
 struct ta_buf_numarray *tb;
 struct numarray *ri;
 int res;
 uint32_t value;

 tb = (struct ta_buf_numarray *)ta_buf;
 cfg = (struct numarray_cfg *)ta_state;


 tb->na.value = tei->value;

 ri = numarray_find(ti, &tb->na.number);

 if (ri != ((void*)0)) {
  if ((tei->flags & TEI_FLAGS_UPDATE) == 0)
   return (EEXIST);


  value = ri->value;
  ri->value = tei->value;
  tei->value = value;

  tei->flags |= TEI_FLAGS_UPDATED;
  *pnum = 0;
  return (0);
 }

 if ((tei->flags & TEI_FLAGS_DONTADD) != 0)
  return (EFBIG);

 res = badd(&tb->na.number, &tb->na, cfg->main_ptr, cfg->used,
     sizeof(struct numarray), compare_numarray);

 KASSERT(res == 1, ("number %d already exists", tb->na.number));
 cfg->used++;
 ti->data = cfg->used;
 *pnum = 1;

 return (0);
}
