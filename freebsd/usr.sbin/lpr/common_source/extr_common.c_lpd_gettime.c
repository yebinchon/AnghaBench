
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int CLOCK_REALTIME ;
 int LPD_TIMESTAMP_PATTERN ;
 int TIMESTR_SIZE ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ daylight ;
 int gettimeofday (struct timeval*,int *) ;
 int localtime (int *) ;
 int memset (struct timespec*,int ,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strftime (char*,int,int ,int ) ;
 int strlcpy (char*,char*,size_t) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int timezone ;

void
lpd_gettime(struct timespec *tsp, char *strp, size_t strsize)
{
 struct timespec local_ts;
 struct timeval btime;
 char tempstr[TIMESTR_SIZE];




 if (tsp == ((void*)0))
  tsp = &local_ts;



 memset(tsp, 0, sizeof(struct timespec));
 if (clock_gettime(CLOCK_REALTIME, tsp)) {

  memset(tsp, 0, sizeof(struct timespec));
  gettimeofday(&btime, ((void*)0));
  tsp->tv_sec = btime.tv_sec;
  tsp->tv_nsec = btime.tv_usec * 1000;
 }


 if ((strp == ((void*)0)) || (strsize < 1))
  return;

 strftime(tempstr, TIMESTR_SIZE, LPD_TIMESTAMP_PATTERN,
   localtime(&tsp->tv_sec));
 if (strsize > TIMESTR_SIZE) {
  strsize = TIMESTR_SIZE;
  strp[TIMESTR_SIZE+1] = '\0';
 }
 strlcpy(strp, tempstr, strsize);
}
