
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct fingerprint {int hash; scalar_t__ type; } ;
typedef scalar_t__ hash_t ;


 scalar_t__ HASH_SHA256 ;
 scalar_t__ HASH_UNKNOWN ;
 scalar_t__ UCL_STRING ;
 struct fingerprint* calloc (int,int) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;
 TYPE_1__* ucl_iterate_object (TYPE_1__*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;
 char* ucl_object_tostring (TYPE_1__ const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static struct fingerprint *
parse_fingerprint(ucl_object_t *obj)
{
 const ucl_object_t *cur;
 ucl_object_iter_t it = ((void*)0);
 const char *function, *fp, *key;
 struct fingerprint *f;
 hash_t fct = HASH_UNKNOWN;

 function = fp = ((void*)0);

 while ((cur = ucl_iterate_object(obj, &it, 1))) {
  key = ucl_object_key(cur);
  if (cur->type != UCL_STRING)
   continue;
  if (strcasecmp(key, "function") == 0) {
   function = ucl_object_tostring(cur);
   continue;
  }
  if (strcasecmp(key, "fingerprint") == 0) {
   fp = ucl_object_tostring(cur);
   continue;
  }
 }

 if (fp == ((void*)0) || function == ((void*)0))
  return (((void*)0));

 if (strcasecmp(function, "sha256") == 0)
  fct = HASH_SHA256;

 if (fct == HASH_UNKNOWN) {
  warnx("Unsupported hashing function: %s", function);
  return (((void*)0));
 }

 f = calloc(1, sizeof(struct fingerprint));
 f->type = fct;
 strlcpy(f->hash, fp, sizeof(f->hash));

 return (f);
}
