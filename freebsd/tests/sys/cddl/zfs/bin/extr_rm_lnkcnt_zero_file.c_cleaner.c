
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ TRUE ;
 scalar_t__ errno ;
 char* filebase ;
 int perror (char*) ;
 int pickidx () ;
 int remove (char*) ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static void *
cleaner(void *a)
{
 char buf[256];
 int idx, ret;

 while (TRUE) {
  idx = pickidx();
  (void) sprintf(buf, "%s.%03d", filebase, idx);
  ret = remove(buf);
  if (ret < 0 && errno != ENOENT)
   (void) perror("removing file");
 }

 return (((void*)0));
}
