
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {char* pdu_data; size_t pdu_data_len; } ;
struct keys {char** keys_names; char** keys_values; } ;


 int KEYS_MAX ;
 int log_err (int,char*) ;
 char* malloc (size_t) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

void
keys_save(struct keys *keys, struct pdu *pdu)
{
 char *data;
 size_t len;
 int i;




 len = 0;
 for (i = 0; i < KEYS_MAX; i++) {
  if (keys->keys_names[i] == ((void*)0))
   break;



  len += strlen(keys->keys_names[i]) +
      strlen(keys->keys_values[i]) + 2;
 }

 if (len == 0)
  return;

 data = malloc(len);
 if (data == ((void*)0))
  log_err(1, "malloc");

 pdu->pdu_data = data;
 pdu->pdu_data_len = len;

 for (i = 0; i < KEYS_MAX; i++) {
  if (keys->keys_names[i] == ((void*)0))
   break;
  data += sprintf(data, "%s=%s",
      keys->keys_names[i], keys->keys_values[i]);
  data += 1;
 }
}
