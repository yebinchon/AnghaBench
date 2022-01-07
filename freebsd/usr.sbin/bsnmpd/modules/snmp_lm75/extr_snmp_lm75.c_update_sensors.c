
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int buf ;


 int LM75BUF ;
 int LOG_ERR ;
 scalar_t__ UPDATE_INTERVAL ;
 scalar_t__ add_sensor (char*) ;
 int free (int*) ;
 int free_sensors () ;
 scalar_t__ get_ticks () ;
 scalar_t__ last_sensors_update ;
 scalar_t__ lm75_sensors ;
 scalar_t__ malloc (size_t) ;
 int memcpy (int*,int*,size_t) ;
 int perror (char*) ;
 scalar_t__ strstr (char*,char*) ;
 int sysctlgetnext (int*,size_t,int*,size_t*) ;
 scalar_t__ sysctlname (int*,size_t,char*,int) ;
 int sysctlnametomib (char*,int*,size_t*) ;
 int syslog (int ,char*,size_t) ;

__attribute__((used)) static int
update_sensors(void)
{
 char buf[LM75BUF];
 int i, root[5], *next, *oid;
 size_t len, nextlen, rootlen;
 static uint64_t now;

 now = get_ticks();
 if (now - last_sensors_update < UPDATE_INTERVAL)
  return (0);

 last_sensors_update = now;


 free_sensors();
 lm75_sensors = 0;


 rootlen = 2;
 if (sysctlnametomib("dev.lm75", root, &rootlen) == -1)
  return (0);

 oid = (int *)malloc(sizeof(int) * rootlen);
 if (oid == ((void*)0)) {
  perror("malloc");
  return (-1);
 }
 memcpy(oid, root, rootlen * sizeof(int));
 len = rootlen;


 for (;;) {


  nextlen = 0;
  if (sysctlgetnext(oid, len, ((void*)0), &nextlen) == -1) {
   free(oid);
   return (0);
  }

  next = (int *)malloc(nextlen);
  if (next == ((void*)0)) {
   syslog(LOG_ERR,
       "Unable to allocate %zu bytes for resource",
       nextlen);
   free(oid);
   return (-1);
  }
  if (sysctlgetnext(oid, len, next, &nextlen) == -1) {
   free(oid);
   free(next);
   return (0);
  }
  free(oid);

  for (i = 0; i < (int)rootlen; i++)
   if (next[i] != root[i]) {
    free(next);
    return (0);
   }
  oid = (int *)malloc(nextlen);
  if (oid == ((void*)0)) {
   syslog(LOG_ERR,
       "Unable to allocate %zu bytes for resource",
       nextlen);
   free(next);
   return (-1);
  }
  memcpy(oid, next, nextlen);
  free(next);
  len = nextlen / sizeof(int);


  if (sysctlname(oid, len, buf, sizeof(buf)) != 0)
   continue;

  if (strstr(buf, "temperature"))
   if (add_sensor(buf) != 0) {
    free(oid);
    return (-1);
   }
 }

 return (0);
}
