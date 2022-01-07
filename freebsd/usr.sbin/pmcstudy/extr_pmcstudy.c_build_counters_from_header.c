
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {int dummy; } ;
typedef int buffer ;
typedef int FILE ;


 int * cnts ;
 int errno ;
 int * fgets (char*,int,int *) ;
 int * malloc (size_t) ;
 int memset (int *,int ,size_t) ;
 int ncnts ;
 int printf (char*,int) ;
 int process_header (int,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
build_counters_from_header(FILE *io)
{
 char buffer[8192], *p;
 int i, len, cnt;
 size_t mlen;




 if (fgets(buffer, sizeof(buffer), io) == ((void*)0)) {
  printf("First line can't be read from file err:%d\n", errno);
  return;
 }
 len = strlen(buffer);
 for (i=0, cnt=0; i<len; i++) {
  if (strncmp(&buffer[i], "s/", 2) == 0) {
   cnt++;
   for(;i<len;i++) {
    if (buffer[i] == ' ')
     break;
   }
  }
 }
 mlen = sizeof(struct counters) * cnt;
 cnts = malloc(mlen);
 ncnts = cnt;
 if (cnts == ((void*)0)) {
  printf("No memory err:%d\n", errno);
  return;
 }
 memset(cnts, 0, mlen);
 for (i=0, cnt=0; i<len; i++) {
  if (strncmp(&buffer[i], "s/", 2) == 0) {
   p = &buffer[i];
   for(;i<len;i++) {
    if (buffer[i] == ' ') {
     buffer[i] = 0;
     break;
    }
   }
   process_header(cnt, p);
   cnt++;
  }
 }
 if (verbose)
  printf("We have %d entries\n", cnt);
}
