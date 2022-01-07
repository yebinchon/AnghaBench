
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int recno_t ;
struct TYPE_10__ {int (* put ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_9__ {char* data; size_t size; } ;
typedef TYPE_1__ DBT ;


 scalar_t__ MAX (int,size_t) ;
 scalar_t__ MIN (size_t,int) ;
 char RECOK ;
 int R_NOOVERWRITE ;
 char SHADOW ;
 char TCERR ;
 TYPE_2__* capdbp ;
 int cgetnext (char**,char**) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int memmove (int *,char*,size_t) ;
 int printf (char*,int) ;
 char* realloc (char*,size_t) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 int stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 int stub2 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ verbose ;
 int warnx (char*,int,char*) ;

__attribute__((used)) static void
db_build(char **ifiles)
{
 DBT key, data;
 recno_t reccnt;
 size_t len, bplen;
 int st;
 char *bp, *p, *t;

 data.data = ((void*)0);
 key.data = ((void*)0);
 for (reccnt = 0, bplen = 0; (st = cgetnext(&bp, ifiles)) > 0;) {





  len = strlen(bp);
  if (bplen <= len + 2) {
   bplen += MAX(256, len + 2);
   if ((data.data = realloc(data.data, bplen)) == ((void*)0))
    errx(1, "malloc failed");
  }


  if ((p = strchr(bp, ':')) == ((void*)0)) {
   warnx("no name field: %.*s", (int)MIN(len, 20), bp);
   continue;
  }


  switch(st) {
  case 1:
   ((char *)(data.data))[0] = RECOK;
   break;
  case 2:
   ((char *)(data.data))[0] = TCERR;
   warnx("record not tc expanded: %.*s", (int)(p - bp),
       bp);
   break;
  }


  memmove(&((u_char *)(data.data))[1], bp, len + 1);
  data.size = len + 2;


  key.data = bp;
  key.size = p - bp;

  switch(capdbp->put(capdbp, &key, &data, R_NOOVERWRITE)) {
  case -1:
   err(1, "put");

  case 1:
   warnx("ignored duplicate: %.*s",
       (int)key.size, (char *)key.data);
   continue;
  }
  ++reccnt;


  *p = '\0';
  if (strchr(bp, '|') == ((void*)0))
   continue;
  *p = ':';


  ((char *)(data.data))[0] = SHADOW;
  memmove(&((u_char *)(data.data))[1], key.data, key.size);
  data.size = key.size + 1;


  for (p = t = bp;; ++p) {
   if (p > t && (*p == ':' || *p == '|')) {
    key.size = p - t;
    key.data = t;
    switch(capdbp->put(capdbp,
        &key, &data, R_NOOVERWRITE)) {
    case -1:
     err(1, "put");

    case 1:
     warnx("ignored duplicate: %.*s",
         (int)key.size, (char *)key.data);
    }
    t = p + 1;
   }
   if (*p == ':')
    break;
  }
 }

 switch(st) {
 case -1:
  err(1, "file argument");

 case -2:
  errx(1, "potential reference loop detected");

 }

 if (verbose)
  (void)printf("cap_mkdb: %d capability records\n", reccnt);
}
