
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;


 int DPRINTF (char*,...) ;
 int memcmp (char*,char const*,size_t) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static uint8_t
hda_parse_config(const char *opts, const char *key, char *val)
{
 char buf[64];
 char *s = buf;
 char *tmp = ((void*)0);
 size_t len;
 int i;

 if (!opts)
  return (0);

 len = strlen(opts);
 if (len >= sizeof(buf)) {
  DPRINTF("Opts too big\n");
  return (0);
 }

 DPRINTF("opts: %s\n", opts);

 strcpy(buf, opts);

 for (i = 0; i < len; i++)
  if (buf[i] == ',') {
   buf[i] = 0;
   tmp = buf + i + 1;
   break;
  }

 if (!memcmp(s, key, strlen(key))) {
  strncpy(val, s + strlen(key), 64);
  return (1);
 }

 if (!tmp)
  return (0);

 s = tmp;
 if (!memcmp(s, key, strlen(key))) {
  strncpy(val, s + strlen(key), 64);
  return (1);
 }

 return (0);
}
