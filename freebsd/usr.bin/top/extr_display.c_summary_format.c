
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbuf ;


 char const* format_k (int) ;
 char const* itoa (int) ;
 int snprintf (char*,int,char*,float) ;
 char* stpcpy (char*,char const*) ;

__attribute__((used)) static void
summary_format(char *str, int *numbers, const char * const *names)
{
    char *p;
    int num;
    const char *thisname;
    char rbuf[6];


    p = str;
    while ((thisname = *names++) != ((void*)0))
    {

 num = *numbers++;


 if (num > 0)
 {

     if (thisname[0] == 'K')
     {

  p = stpcpy(p, format_k(num));


  p = stpcpy(p, thisname+1);
     }

     else if (thisname[0] == ':')
     {
  (void) snprintf(rbuf, sizeof(rbuf), "%.2f",
      (float)*(numbers - 2) / (float)num);
  p = stpcpy(p, rbuf);
  p = stpcpy(p, thisname);
     }
     else
     {
  p = stpcpy(p, itoa(num));
  p = stpcpy(p, thisname);
     }
 }


 else if (num < 0)
 {
     p = stpcpy(p, thisname);
 }
    }


    p -= 2;
    if (p >= str && p[0] == ',' && p[1] == ' ')
    {
 *p = '\0';
    }
}
