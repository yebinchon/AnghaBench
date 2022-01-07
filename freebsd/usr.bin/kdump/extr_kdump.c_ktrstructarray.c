
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktr_struct_array {size_t struct_size; } ;
struct kevent_freebsd11 {int data; int data2; int data1; void* udata; int fflags; int flags; int filter; int ident; } ;
struct kevent32_freebsd11 {int data; int data2; int data1; void* udata; int fflags; int flags; int filter; int ident; } ;
struct kevent32 {int data; int data2; int data1; void* udata; int fflags; int flags; int filter; int ident; } ;
struct kevent {int data; int data2; int data1; void* udata; int fflags; int flags; int filter; int ident; } ;
typedef int kev32 ;
typedef int kev11 ;
typedef int kev ;
typedef int int64_t ;


 int isalnum (char) ;
 int ktrkevent (struct kevent_freebsd11*) ;
 int memcpy (struct kevent_freebsd11*,char*,int) ;
 int memset (struct kevent_freebsd11*,int ,int) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

void
ktrstructarray(struct ktr_struct_array *ksa, size_t buflen)
{
 struct kevent kev;
 char *name, *data;
 size_t namelen, datalen;
 int i;
 bool first;

 buflen -= sizeof(*ksa);
 for (name = (char *)(ksa + 1), namelen = 0;
      namelen < buflen && name[namelen] != '\0';
      ++namelen)
               ;
 if (namelen == buflen)
  goto invalid;
 if (name[namelen] != '\0')
  goto invalid;

 for (i = 0; i < (int)namelen; ++i)
  if (!isalnum(name[i]) && name[i] != '_')
   goto invalid;
 data = name + namelen + 1;
 datalen = buflen - namelen - 1;
 printf("struct %s[] = { ", name);
 first = 1;
 for (; datalen >= ksa->struct_size;
     data += ksa->struct_size, datalen -= ksa->struct_size) {
  if (!first)
   printf("\n             ");
  else
   first = 0;
  if (strcmp(name, "kevent") == 0) {
   if (ksa->struct_size != sizeof(kev))
    goto bad_size;
   memcpy(&kev, data, sizeof(kev));
   ktrkevent(&kev);
  } else if (strcmp(name, "kevent_freebsd11") == 0) {
   struct kevent_freebsd11 kev11;

   if (ksa->struct_size != sizeof(kev11))
    goto bad_size;
   memcpy(&kev11, data, sizeof(kev11));
   memset(&kev, 0, sizeof(kev));
   kev.ident = kev11.ident;
   kev.filter = kev11.filter;
   kev.flags = kev11.flags;
   kev.fflags = kev11.fflags;
   kev.data = kev11.data;
   kev.udata = kev11.udata;
   ktrkevent(&kev);
  } else {
   printf("<unknown structure> }\n");
   return;
  }
 }
 printf(" }\n");
 return;
invalid:
 printf("invalid record\n");
 return;
bad_size:
 printf("<bad size> }\n");
 return;
}
