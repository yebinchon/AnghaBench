
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttydisc_recalc_length {unsigned int curlen; int member_1; struct tty* member_0; } ;
struct tty {int t_inq; int t_writepos; } ;


 int ttydisc_recalc_charlength ;
 int ttyinq_line_iterate_from_reprintpos (int *,int ,struct ttydisc_recalc_length*) ;

__attribute__((used)) static unsigned int
ttydisc_recalc_linelength(struct tty *tp)
{
 struct ttydisc_recalc_length data = { tp, tp->t_writepos };

 ttyinq_line_iterate_from_reprintpos(&tp->t_inq,
     ttydisc_recalc_charlength, &data);
 return (data.curlen);
}
