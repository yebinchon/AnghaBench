
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct _msgT* lh_first; } ;
struct TYPE_5__ {struct _setT* le_next; } ;
struct _setT {int setId; TYPE_2__ msghead; TYPE_1__ entries; } ;
struct _nls_set_hdr {void* __index; void* __nmsgs; void* __setno; } ;
struct _nls_msg_hdr {void* __offset; void* __msglen; void* __msgno; } ;
struct _nls_cat_hdr {void* __msg_txt_offset; void* __msg_hdr_offset; void* __mem; void* __nsets; void* __magic; } ;
struct TYPE_7__ {struct _msgT* le_next; } ;
struct _msgT {int msgId; int str; TYPE_3__ entries; } ;
struct TYPE_8__ {struct _setT* lh_first; } ;


 int _NLS_MAGIC ;
 void* htonl (int) ;
 int memcpy (char*,int ,int) ;
 int memset (void*,char,int) ;
 int printf (char*,int) ;
 TYPE_4__ sethead ;
 int strlen (int ) ;
 int write (int,void*,int) ;
 void* xmalloc (int) ;

void
MCWriteCat(int fd)
{
 int nsets;
 int nmsgs;
 int string_size;
 int msgcat_size;
 void *msgcat;
 struct _nls_cat_hdr *cat_hdr;
 struct _nls_set_hdr *set_hdr;
 struct _nls_msg_hdr *msg_hdr;
 char *strings;
 struct _setT *set;
 struct _msgT *msg;
 int msg_index;
 int msg_offset;



 nsets = 0;
 nmsgs = 0;
 string_size = 0;

 for (set = sethead.lh_first; set != ((void*)0);
     set = set->entries.le_next) {
  nsets++;

  for (msg = set->msghead.lh_first; msg != ((void*)0);
      msg = msg->entries.le_next) {
   nmsgs++;
   string_size += strlen(msg->str) + 1;
  }
 }
 msgcat_size = sizeof(struct _nls_cat_hdr)
     + (nsets * sizeof(struct _nls_set_hdr))
     + (nmsgs * sizeof(struct _nls_msg_hdr))
     + string_size;

 msgcat = xmalloc(msgcat_size);
 memset(msgcat, '\0', msgcat_size);


 cat_hdr = (struct _nls_cat_hdr *) msgcat;
 cat_hdr->__magic = htonl(_NLS_MAGIC);
 cat_hdr->__nsets = htonl(nsets);
 cat_hdr->__mem = htonl(msgcat_size - sizeof(struct _nls_cat_hdr));
 cat_hdr->__msg_hdr_offset =
     htonl(nsets * sizeof(struct _nls_set_hdr));
 cat_hdr->__msg_txt_offset =
     htonl(nsets * sizeof(struct _nls_set_hdr) +
     nmsgs * sizeof(struct _nls_msg_hdr));


 set_hdr = (struct _nls_set_hdr *)(void *)((char *)msgcat +
     sizeof(struct _nls_cat_hdr));
 msg_hdr = (struct _nls_msg_hdr *)(void *)((char *)msgcat +
     sizeof(struct _nls_cat_hdr) +
     nsets * sizeof(struct _nls_set_hdr));
 strings = (char *) msgcat +
     sizeof(struct _nls_cat_hdr) +
     nsets * sizeof(struct _nls_set_hdr) +
     nmsgs * sizeof(struct _nls_msg_hdr);

 msg_index = 0;
 msg_offset = 0;
 for (set = sethead.lh_first; set != ((void*)0);
     set = set->entries.le_next) {

  nmsgs = 0;
  for (msg = set->msghead.lh_first; msg != ((void*)0);
      msg = msg->entries.le_next) {
   int msg_len = strlen(msg->str) + 1;

   msg_hdr->__msgno = htonl(msg->msgId);
   msg_hdr->__msglen = htonl(msg_len);
   msg_hdr->__offset = htonl(msg_offset);

   memcpy(strings, msg->str, msg_len);
   strings += msg_len;
   msg_offset += msg_len;

   nmsgs++;
   msg_hdr++;
  }

  set_hdr->__setno = htonl(set->setId);
  set_hdr->__nmsgs = htonl(nmsgs);
  set_hdr->__index = htonl(msg_index);
  msg_index += nmsgs;
  set_hdr++;
 }


 write(fd, msgcat, msgcat_size);
}
