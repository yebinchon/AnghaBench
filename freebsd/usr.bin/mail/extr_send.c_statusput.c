
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;
typedef int FILE ;


 int MNEW ;
 int MREAD ;
 int fprintf (int *,char*,char*,char*) ;

void
statusput(struct message *mp, FILE *obuf, char *prefix)
{
 char statout[3];
 char *cp = statout;

 if (mp->m_flag & MREAD)
  *cp++ = 'R';
 if ((mp->m_flag & MNEW) == 0)
  *cp++ = 'O';
 *cp = '\0';
 if (statout[0] != '\0')
  fprintf(obuf, "%sStatus: %s\n",
   prefix == ((void*)0) ? "" : prefix, statout);
}
