
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct pubkey {int siglen; void* sig; } ;
typedef int buf ;


 void* calloc (int,int) ;
 int lseek (int,int ,int ) ;
 int memcpy (void*,int ,int) ;
 int read (int,char*,int) ;
 int sbuf_bcat (struct sbuf*,char*,int) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int warn (char*) ;

__attribute__((used)) static struct pubkey *
read_pubkey(int fd)
{
 struct pubkey *pk;
 struct sbuf *sig;
 char buf[4096];
 int r;

 if (lseek(fd, 0, 0) == -1) {
  warn("lseek");
  return (((void*)0));
 }

 sig = sbuf_new_auto();

 while ((r = read(fd, buf, sizeof(buf))) >0) {
  sbuf_bcat(sig, buf, r);
 }

 sbuf_finish(sig);
 pk = calloc(1, sizeof(struct pubkey));
 pk->siglen = sbuf_len(sig);
 pk->sig = calloc(1, pk->siglen);
 memcpy(pk->sig, sbuf_data(sig), pk->siglen);
 sbuf_delete(sig);

 return (pk);
}
