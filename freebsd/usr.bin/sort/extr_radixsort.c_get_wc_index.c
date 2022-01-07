
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int ka; } ;
struct key_value {struct bwstring* k; } ;
struct bwstring {int dummy; } ;


 size_t BWSLEN (struct bwstring const*) ;
 scalar_t__ BWS_GET (struct bwstring const*,size_t) ;
 struct key_value* get_key_from_keys_array (int *,int ) ;

__attribute__((used)) static inline int
get_wc_index(struct sort_list_item *sli, size_t level)
{
 const struct key_value *kv;
 const struct bwstring *bws;

 kv = get_key_from_keys_array(&sli->ka, 0);
 bws = kv->k;

 if ((BWSLEN(bws) > level))
  return (unsigned char) BWS_GET(bws,level);
 return (-1);
}
