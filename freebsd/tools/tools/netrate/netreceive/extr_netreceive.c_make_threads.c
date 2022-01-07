
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td_desc {int fd; int buflen; int td_id; void* buf; } ;


 void* calloc (int,int) ;
 int exit (int) ;
 int perror (char*) ;
 int printf (char*,int,int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct td_desc*) ;
 int round_to (int,int) ;
 int rx_body ;

__attribute__((used)) static struct td_desc **
make_threads(int *s, int nsock, int nthreads)
{
 int i, si, nt = nsock * nthreads;
 int lb = round_to(nt * sizeof (struct td_desc *), 64);
 int td_len = round_to(sizeof(struct td_desc), 64);
 char *m = calloc(1, lb + td_len * nt);
 struct td_desc **tp;

 printf("td len %d -> %d\n", (int)sizeof(struct td_desc) , td_len);

 if (m == ((void*)0)) {
  perror("no room for pointers!");
  exit(1);
 }
 tp = (struct td_desc **)m;
 m += lb;
 for (si = i = 0; i < nt; i++, m += td_len) {
  tp[i] = (struct td_desc *)m;
  tp[i]->fd = s[si];
  tp[i]->buflen = 65536;
  tp[i]->buf = calloc(1, tp[i]->buflen);
  if (++si == nsock)
   si = 0;
  if (pthread_create(&tp[i]->td_id, ((void*)0), rx_body, tp[i])) {
   perror("unable to create thread");
   exit(1);
  }
 }
 return tp;
}
