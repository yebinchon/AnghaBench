
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef long double uint64_t ;
struct timespec {long double tv_nsec; int tv_sec; } ;
struct camdd_dev {scalar_t__ write_dev; scalar_t__ bytes_transferred; int device_name; } ;


 int CLOCK_MONOTONIC_PRECISE ;
 int clock_gettime (int ,struct timespec*) ;
 int fprintf (int ,char*,long double,...) ;
 long double min (scalar_t__,scalar_t__) ;
 int stderr ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 int warn (char*) ;

void
camdd_print_status(struct camdd_dev *camdd_dev, struct camdd_dev *other_dev,
     struct timespec *start_time)
{
 struct timespec done_time;
 uint64_t total_ns;
 long double mb_sec, total_sec;
 int error = 0;

 error = clock_gettime(CLOCK_MONOTONIC_PRECISE, &done_time);
 if (error != 0) {
  warn("Unable to get done time");
  return;
 }

 timespecsub(&done_time, start_time, &done_time);

 total_ns = done_time.tv_nsec + (done_time.tv_sec * 1000000000);
 total_sec = total_ns;
 total_sec /= 1000000000;

 fprintf(stderr, "%ju bytes %s %s\n%ju bytes %s %s\n"
  "%.4Lf seconds elapsed\n",
  (uintmax_t)camdd_dev->bytes_transferred,
  (camdd_dev->write_dev == 0) ? "read from" : "written to",
  camdd_dev->device_name,
  (uintmax_t)other_dev->bytes_transferred,
  (other_dev->write_dev == 0) ? "read from" : "written to",
  other_dev->device_name, total_sec);

 mb_sec = min(other_dev->bytes_transferred,camdd_dev->bytes_transferred);
 mb_sec /= 1024 * 1024;
 mb_sec *= 1000000000;
 mb_sec /= total_ns;
 fprintf(stderr, "%.2Lf MB/sec\n", mb_sec);
}
