
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_sect_len; int s_len; int s_rec_off; } ;
typedef int ssize_t ;


 int KASSERT (int,char*) ;
 int SBUF_INSECTION ;
 int SBUF_ISSECTION (struct sbuf*) ;
 int SBUF_SETFLAG (struct sbuf*,int ) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;

void
sbuf_start_section(struct sbuf *s, ssize_t *old_lenp)
{

 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 if (!SBUF_ISSECTION(s)) {
  KASSERT(s->s_sect_len == 0,
      ("s_sect_len != 0 when starting a section"));
  if (old_lenp != ((void*)0))
   *old_lenp = -1;
  s->s_rec_off = s->s_len;
  SBUF_SETFLAG(s, SBUF_INSECTION);
 } else {
  KASSERT(old_lenp != ((void*)0),
      ("s_sect_len should be saved when starting a subsection"));
  *old_lenp = s->s_sect_len;
  s->s_sect_len = 0;
 }
}
