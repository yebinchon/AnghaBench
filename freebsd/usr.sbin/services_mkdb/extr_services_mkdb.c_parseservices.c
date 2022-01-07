
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int StringList ;
typedef int FILE ;


 scalar_t__ ERANGE ;
 int PMASK ;
 int PROTOMAX ;
 unsigned long ULONG_MAX ;
 void* calloc (int,int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int getline (char**,size_t*,int *) ;
 size_t getprotoindex (int *,char*) ;
 char* getstring (char const*,size_t,char**,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int sl_add (int *,char*) ;
 int * sl_find (int *,char*) ;
 int * sl_init () ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 char* strsep (char**,char*) ;
 unsigned long strtoul (char*,char**,int ) ;
 int warnx (char*,char const*,size_t,...) ;

__attribute__((used)) static StringList ***
parseservices(const char *fname, StringList *sl)
{
 ssize_t len;
 size_t linecap, line, pindex;
 FILE *fp;
 StringList ***svc, *s;
 char *p, *ep;

 if ((fp = fopen(fname, "r")) == ((void*)0))
  err(1, "Cannot open `%s'", fname);

 line = linecap = 0;
 if ((svc = calloc(PMASK + 1, sizeof(StringList **))) == ((void*)0))
  err(1, "Cannot allocate %zu bytes", (size_t)(PMASK + 1));

 p = ((void*)0);
 while ((len = getline(&p, &linecap, fp)) != -1) {
  char *name, *port, *proto, *aliases, *cp, *alias;
  unsigned long pnum;

  line++;

  if (len == 0)
   continue;

  if (p[len - 1] == '\n')
   p[len - 1] = '\0';

  for (cp = p; *cp && isspace((unsigned char)*cp); cp++)
   continue;

  if (*cp == '\0' || *cp == '#')
   continue;

  if ((name = getstring(fname, line, &cp, "name")) == ((void*)0))
   continue;

  if ((port = getstring(fname, line, &cp, "port")) == ((void*)0))
   continue;

  if (cp) {
   for (aliases = cp; *cp && *cp != '#'; cp++)
    continue;

   if (*cp)
    *cp = '\0';
  } else
   aliases = ((void*)0);

  proto = strchr(port, '/');
  if (proto == ((void*)0) || proto[1] == '\0') {
   warnx("%s, %zu: no protocol found", fname, line);
   continue;
  }
  *proto++ = '\0';

  errno = 0;
  pnum = strtoul(port, &ep, 0);
  if (*port == '\0' || *ep != '\0') {
   warnx("%s, %zu: invalid port `%s'", fname, line, port);
   continue;
  }
  if ((errno == ERANGE && pnum == ULONG_MAX) || pnum > PMASK) {
   warnx("%s, %zu: port too big `%s'", fname, line, port);
   continue;
  }

  if (svc[pnum] == ((void*)0)) {
   svc[pnum] = calloc(PROTOMAX, sizeof(StringList *));
   if (svc[pnum] == ((void*)0))
    err(1, "Cannot allocate %zu bytes",
        (size_t)PROTOMAX);
  }

  pindex = getprotoindex(sl, proto);
  if (svc[pnum][pindex] == ((void*)0))
   s = svc[pnum][pindex] = sl_init();
  else
   s = svc[pnum][pindex];


  if (sl_find(s, name) == ((void*)0)) {
   char *p2;

   if ((p2 = strdup(name)) == ((void*)0))
    err(1, "Cannot copy string");
   (void)sl_add(s, p2);
  }

  if (aliases) {
   while ((alias = strsep(&aliases, " \t")) != ((void*)0)) {
    if (alias[0] == '\0')
     continue;
    if (sl_find(s, alias) == ((void*)0)) {
     char *p2;

     if ((p2 = strdup(alias)) == ((void*)0))
      err(1, "Cannot copy string");
     (void)sl_add(s, p2);
    }
   }
  }
 }
 (void)fclose(fp);
 return svc;
}
