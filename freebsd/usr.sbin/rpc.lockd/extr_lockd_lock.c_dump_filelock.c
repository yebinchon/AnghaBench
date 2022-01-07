
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int svid; int oh; int l_len; int l_offset; int exclusive; } ;
struct file_lock {int client_name; TYPE_1__ client; int flags; int status; int nsm_status; int client_cookie; int filehandle; } ;
typedef int hbuff ;
typedef int cbuff ;


 int MAXBUFFERSIZE ;
 int debug_level ;
 int debuglog (char*,...) ;
 int dump_netobj (int *) ;
 int dump_static_object (unsigned char*,int,char*,int,char*,int) ;

void
dump_filelock(const struct file_lock *fl)
{





 if (debug_level < 2) {
  return;
 }

 if (fl != ((void*)0)) {
  debuglog("Dumping file lock structure @ %p\n", fl);
  debuglog("Dumping nlm4_holder:\n"
      "exc: %x  svid: %x  offset:len %llx:%llx\n",
      fl->client.exclusive, fl->client.svid,
      fl->client.l_offset, fl->client.l_len);
 } else {
  debuglog("NULL file lock structure\n");
 }
}
