
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sort_mods {scalar_t__ Mflag; scalar_t__ fflag; scalar_t__ iflag; scalar_t__ dflag; scalar_t__ bflag; } ;
struct keys_array {int dummy; } ;
struct key_specs {struct sort_mods sm; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {scalar_t__ kflag; } ;


 struct bwstring* bwsdup (struct bwstring*) ;
 struct bwstring* cut_field (struct bwstring*,struct key_specs*) ;
 struct sort_mods* default_sort_mods ;
 struct bwstring* dictionary_order (struct bwstring*) ;
 struct bwstring* ignore_case (struct bwstring*) ;
 struct bwstring* ignore_leading_blanks (struct bwstring*) ;
 struct bwstring* ignore_nonprinting (struct bwstring*) ;
 struct key_specs* keys ;
 size_t keys_num ;
 int set_key_on_keys_array (struct keys_array*,struct bwstring*,size_t) ;
 TYPE_1__ sort_opts_vals ;

int
preproc(struct bwstring *s, struct keys_array *ka)
{

 if (sort_opts_vals.kflag)
  for (size_t i = 0; i < keys_num; i++) {
   struct bwstring *key;
   struct key_specs *kspecs;
   struct sort_mods *sm;

   kspecs = &(keys[i]);
   key = cut_field(s, kspecs);

   sm = &(kspecs->sm);
   if (sm->dflag)
    key = dictionary_order(key);
   else if (sm->iflag)
    key = ignore_nonprinting(key);
   if (sm->fflag || sm->Mflag)
    key = ignore_case(key);

   set_key_on_keys_array(ka, key, i);
  }
 else {
  struct bwstring *ret = ((void*)0);
  struct sort_mods *sm = default_sort_mods;

  if (sm->bflag) {
   if (ret == ((void*)0))
    ret = bwsdup(s);
   ret = ignore_leading_blanks(ret);
  }
  if (sm->dflag) {
   if (ret == ((void*)0))
    ret = bwsdup(s);
   ret = dictionary_order(ret);
  } else if (sm->iflag) {
   if (ret == ((void*)0))
    ret = bwsdup(s);
   ret = ignore_nonprinting(ret);
  }
  if (sm->fflag || sm->Mflag) {
   if (ret == ((void*)0))
    ret = bwsdup(s);
   ret = ignore_case(ret);
  }
  if (ret == ((void*)0))
   set_key_on_keys_array(ka, s, 0);
  else
   set_key_on_keys_array(ka, ret, 0);
 }

 return 0;
}
