
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*) ;
 int free (char*) ;
 scalar_t__ mkpath (char*) ;
 int pfatal (char*,char*) ;
 char* strdup (char const*) ;
 char* strrchr (char*,char) ;

void
makedirs(const char *filename, bool striplast)
{
 char *tmpbuf;

 if ((tmpbuf = strdup(filename)) == ((void*)0))
  fatal("out of memory\n");

 if (striplast) {
  char *s = strrchr(tmpbuf, '/');
  if (s == ((void*)0)) {
   free(tmpbuf);
   return;
  }
  *s = '\0';
 }
 if (mkpath(tmpbuf) != 0)
  pfatal("creation of %s failed", tmpbuf);
 free(tmpbuf);
}
