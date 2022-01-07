
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; scalar_t__ len; } ;
struct TYPE_2__ {int hash; } ;
struct directory {unsigned int mode; int stage; TYPE_1__ oid; int path; int len; scalar_t__ baselen; struct directory* up; } ;
struct archiver_context {struct directory* bottom; } ;


 int hashcpy (int ,unsigned char const*) ;
 int st_add (int,size_t) ;
 size_t st_add4 (scalar_t__,int,int ,int) ;
 int strlen (char const*) ;
 struct directory* xmalloc (int ) ;
 int xsnprintf (int ,size_t,char*,int,int ,char const*) ;

__attribute__((used)) static void queue_directory(const unsigned char *sha1,
  struct strbuf *base, const char *filename,
  unsigned mode, int stage, struct archiver_context *c)
{
 struct directory *d;
 size_t len = st_add4(base->len, 1, strlen(filename), 1);
 d = xmalloc(st_add(sizeof(*d), len));
 d->up = c->bottom;
 d->baselen = base->len;
 d->mode = mode;
 d->stage = stage;
 c->bottom = d;
 d->len = xsnprintf(d->path, len, "%.*s%s/", (int)base->len, base->buf, filename);
 hashcpy(d->oid.hash, sha1);
}
