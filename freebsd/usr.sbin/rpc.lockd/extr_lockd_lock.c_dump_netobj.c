
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netobj {scalar_t__ n_len; int n_bytes; } ;
typedef int hbuff ;
typedef int cbuff ;


 int MAXBUFFERSIZE ;
 int debug_level ;
 int debuglog (char*,...) ;
 int dump_static_object (int ,scalar_t__,char*,int,char*,int) ;

void
dump_netobj(const struct netobj *nobj)
{
 char hbuff[MAXBUFFERSIZE*2];
 char cbuff[MAXBUFFERSIZE];

 if (debug_level < 2) {
  return;
 }

 if (nobj == ((void*)0)) {
  debuglog("Null netobj pointer\n");
 }
 else if (nobj->n_len == 0) {
  debuglog("Size zero netobj\n");
 } else {
  dump_static_object(nobj->n_bytes, nobj->n_len,
      hbuff, sizeof(hbuff), cbuff, sizeof(cbuff));
  debuglog("netobj: len: %d  data: %s :::  %s\n",
      nobj->n_len, hbuff, cbuff);
 }
}
