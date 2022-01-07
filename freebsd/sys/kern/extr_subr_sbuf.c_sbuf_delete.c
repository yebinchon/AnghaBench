
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {struct sbuf* s_buf; } ;


 int SBFREE (struct sbuf*) ;
 scalar_t__ SBUF_ISDYNAMIC (struct sbuf*) ;
 int SBUF_ISDYNSTRUCT (struct sbuf*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int memset (struct sbuf*,int ,int) ;

void
sbuf_delete(struct sbuf *s)
{
 int isdyn;

 assert_sbuf_integrity(s);


 if (SBUF_ISDYNAMIC(s))
  SBFREE(s->s_buf);
 isdyn = SBUF_ISDYNSTRUCT(s);
 memset(s, 0, sizeof(*s));
 if (isdyn)
  SBFREE(s);
}
