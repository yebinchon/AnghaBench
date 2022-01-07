
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_column; int t_writepos; int t_inq; int t_outq; } ;





 int CMP_FLAG (int ,int) ;


 int CTL_VALID (char) ;
 int MPASS (int) ;
 int OCRNL ;
 int ONLCR ;
 int ONLRET ;
 int ONOCR ;
 int ONOEOT ;
 int OPOST ;
 int PRINT_NORMAL () ;
 int TAB3 ;
 int o ;
 int ttyinq_reprintpos_set (int *) ;
 unsigned int ttyoutq_write_nofrag (int *,char*,int) ;

__attribute__((used)) static int
ttydisc_write_oproc(struct tty *tp, char c)
{
 unsigned int scnt, error;

 MPASS(CMP_FLAG(o, OPOST));
 MPASS(CTL_VALID(c));


 switch (c) {
 case 131:

  if (CMP_FLAG(o, ONOEOT))
   return (0);
  return ttyoutq_write_nofrag(&tp->t_outq, &c, 1);

 case 130:

  if (ttyoutq_write_nofrag(&tp->t_outq, &c, 1) != 0)
   return (-1);
  if (tp->t_column > 0)
   tp->t_column--;
  return (0);

 case 128:

  scnt = 8 - (tp->t_column & 7);
  if (CMP_FLAG(o, TAB3)) {
   error = ttyoutq_write_nofrag(&tp->t_outq,
       "        ", scnt);
  } else {
   error = ttyoutq_write_nofrag(&tp->t_outq, &c, 1);
  }
  if (error)
   return (-1);

  tp->t_column += scnt;
  MPASS((tp->t_column % 8) == 0);
  return (0);

 case 129:

  if (CMP_FLAG(o, ONLCR)) {

   error = ttyoutq_write_nofrag(&tp->t_outq, "\r\n", 2);
  } else {
   error = ttyoutq_write_nofrag(&tp->t_outq, &c, 1);
  }
  if (error)
   return (-1);

  if (CMP_FLAG(o, ONLCR|ONLRET)) {
   tp->t_column = tp->t_writepos = 0;
   ttyinq_reprintpos_set(&tp->t_inq);
  }
  return (0);

 case 132:

  if (CMP_FLAG(o, OCRNL))
   c = 129;

  if (CMP_FLAG(o, ONOCR) && tp->t_column == 0)
   return (0);
  if (ttyoutq_write_nofrag(&tp->t_outq, &c, 1) != 0)
   return (-1);

  tp->t_column = tp->t_writepos = 0;
  ttyinq_reprintpos_set(&tp->t_inq);
  return (0);
 }





 return ttyoutq_write_nofrag(&tp->t_outq, &c, 1);

}
