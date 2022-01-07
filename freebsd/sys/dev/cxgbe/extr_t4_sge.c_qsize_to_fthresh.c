
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ X_CIDXFLUSHTHRESH_128 ;
 scalar_t__ ilog2 (int) ;
 int powerof2 (int) ;

__attribute__((used)) static u_int
qsize_to_fthresh(int qsize)
{
 u_int fthresh;

 while (!powerof2(qsize))
  qsize++;
 fthresh = ilog2(qsize);
 if (fthresh > X_CIDXFLUSHTHRESH_128)
  fthresh = X_CIDXFLUSHTHRESH_128;

 return (fthresh);
}
