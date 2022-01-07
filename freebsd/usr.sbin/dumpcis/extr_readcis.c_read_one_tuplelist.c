
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
struct tuple_list {scalar_t__ offs; int flags; struct tuple* tuples; struct tuple_list* next; } ;
struct tuple_info {unsigned char length; } ;
struct tuple {unsigned char code; unsigned char length; unsigned char* data; struct tuple* next; } ;
typedef scalar_t__ off_t ;


 unsigned char CIS_END ;
 unsigned char CIS_NULL ;
 unsigned char LENGTH_ANY ;
 int MDF_ATTR ;
 int PIOCRWFLAG ;
 int SEEK_SET ;
 int assert (int) ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 struct tuple_info* get_tuple_info (unsigned char) ;
 scalar_t__ ioctl (int,int ,int*) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int printf (char*,...) ;
 unsigned char read (int,unsigned char*,unsigned char) ;
 struct tuple_list* tlist ;
 char* tuple_name (unsigned char) ;
 void* xmalloc (unsigned char) ;

__attribute__((used)) static struct tuple_list *
read_one_tuplelist(int fd, int flags, off_t offs)
{
 struct tuple *tp, *last_tp = 0;
 struct tuple_list *tl;
 struct tuple_info *tinfo;
 int total = 0;
 unsigned char code, length;


 for (tl = tlist; tl; tl = tl->next)
  if (tl->offs == offs && tl->flags == (flags & MDF_ATTR))
   return (0);
 tl = xmalloc(sizeof(*tl));
 tl->offs = offs;
 tl->flags = flags & MDF_ATTR;
 if (ioctl(fd, PIOCRWFLAG, &flags) < 0)
  err(1, "Setting flag to rad %s memory failed",
      flags ? "attribute" : "common");
 if (lseek(fd, offs, SEEK_SET) < 0)
  err(1, "Unable to seek to memory offset %ju",
      (uintmax_t)offs);
 do {
  if (read(fd, &code, 1) != 1)
   errx(1, "CIS code read");
  total++;
  if (code == CIS_NULL)
   continue;
  tp = xmalloc(sizeof(*tp));
  tp->code = code;
  if (code == CIS_END)
   length = 0;
  else {
   if (read(fd, &length, 1) != 1)
    errx(1, "CIS len read");
   total++;
  }
  if (length == 0xFF) {
   length = 0;
   code = CIS_END;
  }
  assert(length < 0xff);





  tinfo = get_tuple_info(code);
  if (tinfo == ((void*)0) || (tinfo->length != LENGTH_ANY && tinfo->length > length)) {
   printf("code %s (%d) ignored\n", tuple_name(code), code);
   continue;
  }
  tp->length = length;
  if (length != 0) {
   total += length;
   tp->data = xmalloc(length);
   if (read(fd, tp->data, length) != length)
    errx(1, "Can't read CIS data");
  }

  if (last_tp != ((void*)0))
   last_tp->next = tp;
  if (tl->tuples == ((void*)0)) {
   tl->tuples = tp;
   tp->next = ((void*)0);
  }
  last_tp = tp;
 } while (code != CIS_END && total < 1024);
 return (tl);
}
