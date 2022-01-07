
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {size_t oldidx; int * oldptr; } ;
struct sbuf {int dummy; } ;
typedef int g_event_t ;


 int M_WAITOK ;
 size_t PAGE_SIZE ;
 int SBUF_AUTOEXTEND ;
 int SBUF_FIXEDLEN ;
 int SBUF_INCLUDENUL ;
 int SYSCTL_OUT (struct sysctl_req*,int ,size_t) ;
 int g_waitfor_event (int *,struct sbuf*,int ,int *) ;
 int sbuf_count_drain ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 size_t sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,size_t,int) ;
 int sbuf_set_drain (struct sbuf*,int ,size_t*) ;

__attribute__((used)) static int
sysctl_kern_geom_confany(struct sysctl_req *req, g_event_t *func, size_t *hint)
{
 size_t len = 0;
 int error = 0;
 struct sbuf *sb;

 if (req->oldptr == ((void*)0)) {
  sb = sbuf_new(((void*)0), ((void*)0), PAGE_SIZE, SBUF_FIXEDLEN |
      SBUF_INCLUDENUL);
  sbuf_set_drain(sb, sbuf_count_drain, &len);
  g_waitfor_event(func, sb, M_WAITOK, ((void*)0));
  req->oldidx = *hint = len;
 } else {
  sb = sbuf_new(((void*)0), ((void*)0), *hint, SBUF_AUTOEXTEND |
      SBUF_INCLUDENUL);
  g_waitfor_event(func, sb, M_WAITOK, ((void*)0));
  *hint = sbuf_len(sb);
  error = SYSCTL_OUT(req, sbuf_data(sb), sbuf_len(sb));
 }
 sbuf_delete(sb);
 return error;
}
