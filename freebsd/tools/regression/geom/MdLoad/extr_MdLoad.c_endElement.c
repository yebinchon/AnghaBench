
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct simdisk_softc {int sectorsize; int sbuf; TYPE_1__* sp; void* fwcylinders; void* fwheads; void* fwsectors; scalar_t__ mediasize; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {int * data; void* offset; } ;


 int errx (int,char*,...) ;
 int g_simdisk_insertsector (struct simdisk_softc*,TYPE_1__*) ;
 scalar_t__ isdigit (char) ;
 int isxdigit (char) ;
 int memset (int *,int,int) ;
 int printf (char*,char const*,char*) ;
 int sbuf_clear (int ) ;
 char* sbuf_data (int ) ;
 int sbuf_finish (int ) ;
 int strcasecmp (char const*,char*) ;
 void* strtoul (char*,char**,int) ;
 void* strtoull (char*,char**,int ) ;
 char tolower (char) ;

__attribute__((used)) static void
endElement(void *userData, const char *name)
{
 struct simdisk_softc *sc;
 char *p;
 u_char *q;
 int i, j;
 off_t o;

 sc = userData;

 if (!strcasecmp(name, "comment")) {
  sbuf_clear(sc->sbuf);
  return;
 }
 sbuf_finish(sc->sbuf);
 if (!strcasecmp(name, "sectorsize")) {
  sc->sectorsize = strtoul(sbuf_data(sc->sbuf), &p, 0);
  if (*p != '\0')
   errx(1, "strtoul croaked on sectorsize");
 } else if (!strcasecmp(name, "mediasize")) {
  o = strtoull(sbuf_data(sc->sbuf), &p, 0);
  if (*p != '\0')
   errx(1, "strtoul croaked on mediasize");
  if (o > 0)
   sc->mediasize = o;
 } else if (!strcasecmp(name, "fwsectors")) {
  sc->fwsectors = strtoul(sbuf_data(sc->sbuf), &p, 0);
  if (*p != '\0')
   errx(1, "strtoul croaked on fwsectors");
 } else if (!strcasecmp(name, "fwheads")) {
  sc->fwheads = strtoul(sbuf_data(sc->sbuf), &p, 0);
  if (*p != '\0')
   errx(1, "strtoul croaked on fwheads");
 } else if (!strcasecmp(name, "fwcylinders")) {
  sc->fwcylinders = strtoul(sbuf_data(sc->sbuf), &p, 0);
  if (*p != '\0')
   errx(1, "strtoul croaked on fwcylinders");
 } else if (!strcasecmp(name, "offset")) {
  sc->sp->offset= strtoull(sbuf_data(sc->sbuf), &p, 0);
  if (*p != '\0')
   errx(1, "strtoul croaked on offset");
 } else if (!strcasecmp(name, "fill")) {
  j = strtoul(sbuf_data(sc->sbuf), ((void*)0), 16);
  memset(sc->sp->data, j, sc->sectorsize);
 } else if (!strcasecmp(name, "hexdata")) {
  q = sc->sp->data;
  p = sbuf_data(sc->sbuf);
  for (i = 0; i < sc->sectorsize; i++) {
   if (!isxdigit(*p))
    errx(1, "I croaked on hexdata %d:(%02x)", i, *p);
   if (isdigit(*p))
    j = (*p - '0') << 4;
   else
    j = (tolower(*p) - 'a' + 10) << 4;
   p++;
   if (!isxdigit(*p))
    errx(1, "I croaked on hexdata %d:(%02x)", i, *p);
   if (isdigit(*p))
    j |= *p - '0';
   else
    j |= tolower(*p) - 'a' + 10;
   p++;
   *q++ = j;
  }
 } else if (!strcasecmp(name, "sector")) {
  g_simdisk_insertsector(sc, sc->sp);
  sc->sp = ((void*)0);
 } else if (!strcasecmp(name, "diskimage")) {
 } else if (!strcasecmp(name, "FreeBSD")) {
 } else {
  printf("<%s>[[%s]]\n", name, sbuf_data(sc->sbuf));
 }
 sbuf_clear(sc->sbuf);
}
