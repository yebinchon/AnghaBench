
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {int pdu_data_len; char* pdu_data; } ;
struct keys {char* keys_data; int keys_data_len; char** keys_values; int ** keys_names; } ;


 int KEYS_MAX ;
 int assert (int) ;
 int log_debugx (char*,int *,char*) ;
 int log_err (int,char*) ;
 int log_errx (int,char*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 size_t strlen (char*) ;
 int * strsep (char**,char*) ;

void
keys_load(struct keys *keys, const struct pdu *pdu)
{
 int i;
 char *pair;
 size_t pair_len;

 if (pdu->pdu_data_len == 0)
  return;

 if (pdu->pdu_data[pdu->pdu_data_len - 1] != '\0')
  log_errx(1, "protocol error: key not NULL-terminated\n");

 assert(keys->keys_data == ((void*)0));
 keys->keys_data_len = pdu->pdu_data_len;
 keys->keys_data = malloc(keys->keys_data_len);
 if (keys->keys_data == ((void*)0))
  log_err(1, "malloc");
 memcpy(keys->keys_data, pdu->pdu_data, keys->keys_data_len);




 pair = keys->keys_data;
 for (i = 0;; i++) {
  if (i >= KEYS_MAX)
   log_errx(1, "too many keys received");

  pair_len = strlen(pair);

  keys->keys_values[i] = pair;
  keys->keys_names[i] = strsep(&keys->keys_values[i], "=");
  if (keys->keys_names[i] == ((void*)0) || keys->keys_values[i] == ((void*)0))
   log_errx(1, "malformed keys");
  log_debugx("key received: \"%s=%s\"",
      keys->keys_names[i], keys->keys_values[i]);

  pair += pair_len + 1;
  if (pair == keys->keys_data + keys->keys_data_len)
   break;
  assert(pair < keys->keys_data + keys->keys_data_len);
 }
}
