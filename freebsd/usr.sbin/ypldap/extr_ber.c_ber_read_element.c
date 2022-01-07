
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u_char ;
struct ber_element {unsigned long be_type; int be_len; int be_class; int be_encoding; long long be_numeric; int be_free; struct ber_element* be_next; struct ber_element* be_sub; int * be_val; } ;
struct ber {int fd; int br_rend; int br_rptr; unsigned long (* br_application ) (struct ber_element*) ;} ;
typedef int ssize_t ;


 int BER_CLASS_UNIVERSAL ;
 int DPRINTF (char*,int,...) ;
 int ECANCELED ;
 int ULLONG_MAX ;
 void* ber_get_element (int ) ;
 int ber_getc (struct ber*,long long*) ;
 int ber_read (struct ber*,int *,int) ;
 int errno ;
 int get_id (struct ber*,unsigned long*,int*,int*) ;
 int get_len (struct ber*,int*) ;
 void* malloc (int) ;
 unsigned long stub1 (struct ber_element*) ;

__attribute__((used)) static ssize_t
ber_read_element(struct ber *ber, struct ber_element *elm)
{
 long long val = 0;
 struct ber_element *next;
 unsigned long type;
 int i, class, cstruct;
 ssize_t len, r, totlen = 0;
 u_char c;

 if ((r = get_id(ber, &type, &class, &cstruct)) == -1)
  return -1;
 DPRINTF("ber read got class %d type %lu, %s\n",
     class, type, cstruct ? "constructive" : "primitive");
 totlen += r;
 if ((r = get_len(ber, &len)) == -1)
  return -1;
 DPRINTF("ber read element size %zd\n", len);
 totlen += r + len;





 if (ber->fd == -1 && len > ber->br_rend - ber->br_rptr) {
  errno = ECANCELED;
  return -1;
 }

 elm->be_type = type;
 elm->be_len = len;
 elm->be_class = class;

 if (elm->be_encoding == 0) {

  if (cstruct)
   elm->be_encoding = 129;
  else if (class == BER_CLASS_UNIVERSAL)
   elm->be_encoding = type;
  else if (ber->br_application != ((void*)0)) {





   elm->be_encoding = (*ber->br_application)(elm);
  } else

   elm->be_encoding = 132;
 }

 switch (elm->be_encoding) {
 case 134:
  break;
 case 136:
 case 133:
 case 135:
  if (len > (ssize_t)sizeof(long long))
   return -1;
  for (i = 0; i < len; i++) {
   if (ber_getc(ber, &c) != 1)
    return -1;
   val <<= 8;
   val |= c;
  }


  if (val >> ((i - 1) * 8) & 0x80)
   val |= ULLONG_MAX << (i * 8);
  elm->be_numeric = val;
  break;
 case 137:
  elm->be_val = malloc(len);
  if (elm->be_val == ((void*)0))
   return -1;
  elm->be_free = 1;
  elm->be_len = len;
  ber_read(ber, elm->be_val, len);
  break;
 case 130:
 case 131:
  elm->be_val = malloc(len + 1);
  if (elm->be_val == ((void*)0))
   return -1;
  elm->be_free = 1;
  elm->be_len = len;
  ber_read(ber, elm->be_val, len);
  ((u_char *)elm->be_val)[len] = '\0';
  break;
 case 132:
  if (len != 0)
   return -1;
  break;
 case 129:
 case 128:
  if (elm->be_sub == ((void*)0)) {
   if ((elm->be_sub = ber_get_element(0)) == ((void*)0))
    return -1;
  }
  next = elm->be_sub;
  while (len > 0) {
   r = ber_read_element(ber, next);
   if (r == -1)
    return -1;
   len -= r;
   if (len > 0 && next->be_next == ((void*)0)) {
    if ((next->be_next = ber_get_element(0)) ==
        ((void*)0))
     return -1;
   }
   next = next->be_next;
  }
  break;
 }
 return totlen;
}
