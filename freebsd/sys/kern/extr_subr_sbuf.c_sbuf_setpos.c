
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_size; scalar_t__ s_len; } ;
typedef scalar_t__ ssize_t ;
typedef int intmax_t ;


 int KASSERT (int,char*) ;
 int SBUF_ISSECTION (struct sbuf*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;

int
sbuf_setpos(struct sbuf *s, ssize_t pos)
{

 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 KASSERT(pos >= 0,
     ("attempt to seek to a negative position (%jd)", (intmax_t)pos));
 KASSERT(pos < s->s_size,
     ("attempt to seek past end of sbuf (%jd >= %jd)",
     (intmax_t)pos, (intmax_t)s->s_size));
 KASSERT(!SBUF_ISSECTION(s),
     ("attempt to seek when in a section"));

 if (pos < 0 || pos > s->s_len)
  return (-1);
 s->s_len = pos;
 return (0);
}
