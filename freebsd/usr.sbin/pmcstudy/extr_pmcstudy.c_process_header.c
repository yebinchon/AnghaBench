
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {int counter_name; int cpu; } ;


 int MAX_NLEN ;
 struct counters* cnts ;
 int printf (char*,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (int ,char*,int) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static void
process_header(int idx, char *p)
{
 struct counters *up;
 int i, len, nlen;






 if (strncmp(p, "s/", 2)) {
  printf("Check -- invalid header no s/ in %s\n",
         p);
  return;
 }
 up = &cnts[idx];
 up->cpu = strtol(&p[2], ((void*)0), 10);
 len = strlen(p);
 for (i=2; i<len; i++) {
  if (p[i] == '/') {
   nlen = strlen(&p[(i+1)]);
   if (nlen < (MAX_NLEN-1)) {
    strcpy(up->counter_name, &p[(i+1)]);
   } else {
    strncpy(up->counter_name, &p[(i+1)], (MAX_NLEN-1));
   }
  }
 }
}
