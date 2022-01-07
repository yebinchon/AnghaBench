
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;
struct sbuf {int dummy; } ;


 int SBUF_FIXEDLEN ;
 int SBUF_INCLUDENUL ;
 struct sbuf* sbuf_new (struct sbuf*,char*,int,int) ;
 int sbuf_set_drain (struct sbuf*,int ,struct sysctl_req*) ;
 int sbuf_sysctl_drain ;

struct sbuf *
sbuf_new_for_sysctl(struct sbuf *s, char *buf, int length,
    struct sysctl_req *req)
{


 if (buf == ((void*)0) && length == 0)
  length = 64;
 s = sbuf_new(s, buf, length, SBUF_FIXEDLEN | SBUF_INCLUDENUL);
 sbuf_set_drain(s, sbuf_sysctl_drain, req);
 return (s);
}
