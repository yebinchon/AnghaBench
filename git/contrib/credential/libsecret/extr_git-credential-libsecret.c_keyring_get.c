
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct credential {void* password; void* username; scalar_t__ path; scalar_t__ host; int protocol; } ;
struct TYPE_9__ {int message; } ;
struct TYPE_8__ {int * data; } ;
typedef int SecretValue ;
typedef int SecretService ;
typedef int SecretItem ;
typedef TYPE_1__ GList ;
typedef int GHashTable ;
typedef TYPE_2__ GError ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SECRET_SCHEMA_COMPAT_NETWORK ;
 int SECRET_SEARCH_LOAD_SECRETS ;
 int SECRET_SEARCH_UNLOCK ;
 int g_critical (char*,int ) ;
 int g_error_free (TYPE_2__*) ;
 int g_free (void*) ;
 char* g_hash_table_lookup (int *,char*) ;
 int g_hash_table_unref (int *) ;
 int g_list_free_full (TYPE_1__*,int ) ;
 int g_object_unref ;
 void* g_strdup (char const*) ;
 int * make_attr_list (struct credential*) ;
 int * secret_item_get_attributes (int *) ;
 int * secret_item_get_secret (int *) ;
 int * secret_service_get_sync (int ,int *,TYPE_2__**) ;
 TYPE_1__* secret_service_search_sync (int *,int ,int *,int,int *,TYPE_2__**) ;
 char* secret_value_get_text (int *) ;
 int secret_value_unref (int *) ;

__attribute__((used)) static int keyring_get(struct credential *c)
{
 SecretService *service = ((void*)0);
 GHashTable *attributes = ((void*)0);
 GError *error = ((void*)0);
 GList *items = ((void*)0);

 if (!c->protocol || !(c->host || c->path))
  return EXIT_FAILURE;

 service = secret_service_get_sync(0, ((void*)0), &error);
 if (error != ((void*)0)) {
  g_critical("could not connect to Secret Service: %s", error->message);
  g_error_free(error);
  return EXIT_FAILURE;
 }

 attributes = make_attr_list(c);
 items = secret_service_search_sync(service,
        SECRET_SCHEMA_COMPAT_NETWORK,
        attributes,
        SECRET_SEARCH_LOAD_SECRETS | SECRET_SEARCH_UNLOCK,
        ((void*)0),
        &error);
 g_hash_table_unref(attributes);
 if (error != ((void*)0)) {
  g_critical("lookup failed: %s", error->message);
  g_error_free(error);
  return EXIT_FAILURE;
 }

 if (items != ((void*)0)) {
  SecretItem *item;
  SecretValue *secret;
  const char *s;

  item = items->data;
  secret = secret_item_get_secret(item);
  attributes = secret_item_get_attributes(item);

  s = g_hash_table_lookup(attributes, "user");
  if (s) {
   g_free(c->username);
   c->username = g_strdup(s);
  }

  s = secret_value_get_text(secret);
  if (s) {
   g_free(c->password);
   c->password = g_strdup(s);
  }

  g_hash_table_unref(attributes);
  secret_value_unref(secret);
  g_list_free_full(items, g_object_unref);
 }

 return EXIT_SUCCESS;
}
