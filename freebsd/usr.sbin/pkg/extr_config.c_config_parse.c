
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct sbuf {int dummy; } ;
struct config_value {void* value; } ;
struct config_entry {void* value; void* list; } ;
typedef scalar_t__ pkg_conf_file_t ;
struct TYPE_10__ {int type; int main_only; void* value; void* list; scalar_t__ envset; int key; } ;


 scalar_t__ CONFFILE_PKG ;
 scalar_t__ CONFFILE_REPO ;
 int CONFIG_SIZE ;


 int STAILQ_INIT (void*) ;
 int STAILQ_INSERT_TAIL (void*,struct config_value*,int ) ;
 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_BOOLEAN ;
 scalar_t__ UCL_STRING ;
 TYPE_8__* c ;
 struct config_entry* calloc (int,int) ;
 int free (struct config_entry*) ;
 void* malloc (int) ;
 int next ;
 int sbuf_clear (struct sbuf*) ;
 int sbuf_cpy (struct sbuf*,char*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_putc (struct sbuf*,char const) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (int ,int ) ;
 void* strdup (char*) ;
 size_t strlen (char const*) ;
 TYPE_1__* ucl_iterate_object (TYPE_1__ const*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;
 scalar_t__ ucl_object_toboolean (TYPE_1__ const*) ;
 char* ucl_object_tostring (TYPE_1__ const*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
config_parse(const ucl_object_t *obj, pkg_conf_file_t conftype)
{
 struct sbuf *buf = sbuf_new_auto();
 const ucl_object_t *cur, *seq;
 ucl_object_iter_t it = ((void*)0), itseq = ((void*)0);
 struct config_entry *temp_config;
 struct config_value *cv;
 const char *key;
 int i;
 size_t j;


 temp_config = calloc(CONFIG_SIZE, sizeof(struct config_entry));

 while ((cur = ucl_iterate_object(obj, &it, 1))) {
  key = ucl_object_key(cur);
  if (key == ((void*)0))
   continue;
  sbuf_clear(buf);

  if (conftype == CONFFILE_PKG) {
   for (j = 0; j < strlen(key); ++j)
    sbuf_putc(buf, key[j]);
   sbuf_finish(buf);
  } else if (conftype == CONFFILE_REPO) {
   if (strcasecmp(key, "url") == 0)
    sbuf_cpy(buf, "PACKAGESITE");
   else if (strcasecmp(key, "mirror_type") == 0)
    sbuf_cpy(buf, "MIRROR_TYPE");
   else if (strcasecmp(key, "signature_type") == 0)
    sbuf_cpy(buf, "SIGNATURE_TYPE");
   else if (strcasecmp(key, "fingerprints") == 0)
    sbuf_cpy(buf, "FINGERPRINTS");
   else if (strcasecmp(key, "pubkey") == 0)
    sbuf_cpy(buf, "PUBKEY");
   else if (strcasecmp(key, "enabled") == 0) {
    if ((cur->type != UCL_BOOLEAN) ||
        !ucl_object_toboolean(cur))
     goto cleanup;
   } else
    continue;
   sbuf_finish(buf);
  }

  for (i = 0; i < CONFIG_SIZE; i++) {
   if (strcmp(sbuf_data(buf), c[i].key) == 0)
    break;
  }


  if (i == CONFIG_SIZE)
   continue;


  if (c[i].envset)
   continue;


  switch (c[i].type) {
  case 128:
   if (cur->type != UCL_ARRAY) {
    warnx("Skipping invalid array "
        "value for %s.\n", c[i].key);
    continue;
   }
   temp_config[i].list =
       malloc(sizeof(*temp_config[i].list));
   STAILQ_INIT(temp_config[i].list);

   while ((seq = ucl_iterate_object(cur, &itseq, 1))) {
    if (seq->type != UCL_STRING)
     continue;
    cv = malloc(sizeof(struct config_value));
    cv->value =
        strdup(ucl_object_tostring(seq));
    STAILQ_INSERT_TAIL(temp_config[i].list, cv,
        next);
   }
   break;
  case 129:
   temp_config[i].value =
       strdup(ucl_object_toboolean(cur) ? "yes" : "no");
   break;
  default:

   temp_config[i].value = strdup(ucl_object_tostring(cur));
   break;
  }
 }


 for (i = 0; i < CONFIG_SIZE; i++) {
  if (c[i].envset)
   continue;

  if (conftype != CONFFILE_PKG && c[i].main_only == 1)
   continue;
  switch (c[i].type) {
  case 128:
   c[i].list = temp_config[i].list;
   break;
  default:
   c[i].value = temp_config[i].value;
   break;
  }
 }

cleanup:
 free(temp_config);
 sbuf_delete(buf);
}
