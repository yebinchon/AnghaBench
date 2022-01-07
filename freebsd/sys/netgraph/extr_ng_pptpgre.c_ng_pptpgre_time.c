
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int pptptime_t ;


 int PPTP_TIME_SCALE ;
 int microuptime (struct timeval*) ;

__attribute__((used)) static pptptime_t
ng_pptpgre_time(void)
{
 struct timeval tv;
 pptptime_t t;

 microuptime(&tv);
 t = (pptptime_t)tv.tv_sec * PPTP_TIME_SCALE;
 t += tv.tv_usec / (1000000 / PPTP_TIME_SCALE);
 return(t);
}
