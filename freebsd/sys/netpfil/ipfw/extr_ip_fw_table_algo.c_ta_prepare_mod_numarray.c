
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct numarray {int dummy; } ;
struct mod_item {int size; int main_ptr; } ;


 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;
 int memset (struct mod_item*,int ,int) ;

__attribute__((used)) static int
ta_prepare_mod_numarray(void *ta_buf, uint64_t *pflags)
{
 struct mod_item *mi;

 mi = (struct mod_item *)ta_buf;

 memset(mi, 0, sizeof(struct mod_item));
 mi->size = *pflags;
 mi->main_ptr = malloc(sizeof(struct numarray) * mi->size, M_IPFW,
     M_WAITOK | M_ZERO);

 return (0);
}
