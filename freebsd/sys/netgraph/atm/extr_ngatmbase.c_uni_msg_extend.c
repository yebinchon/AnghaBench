
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uni_msg {int * b_buf; int * b_lim; int * b_rptr; int * b_wptr; } ;


 int ENOMEM ;
 scalar_t__ EXTRA ;
 int M_NOWAIT ;
 int M_UNIMSG ;
 int bcopy (int *,int *,size_t) ;
 int free (int *,int ) ;
 int * malloc (size_t,int ,int ) ;
 int uni_msg_destroy (struct uni_msg*) ;
 size_t uni_msg_leading (struct uni_msg*) ;
 size_t uni_msg_len (struct uni_msg*) ;

int
uni_msg_extend(struct uni_msg *m, size_t s)
{
 u_char *b;
 size_t len, lead;

 lead = uni_msg_leading(m);
 len = uni_msg_len(m);
 s += lead + len + EXTRA;
 if ((b = malloc(s, M_UNIMSG, M_NOWAIT)) == ((void*)0)) {
  uni_msg_destroy(m);
  return (ENOMEM);
 }

 bcopy(m->b_rptr, b + lead, len);
 free(m->b_buf, M_UNIMSG);

 m->b_buf = b;
 m->b_rptr = m->b_buf + lead;
 m->b_wptr = m->b_rptr + len;
 m->b_lim = m->b_buf + s;

 return (0);
}
