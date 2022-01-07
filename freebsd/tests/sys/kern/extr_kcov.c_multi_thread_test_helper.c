
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_thread_data {size_t mode; int thread; int * buf; int fd; } ;


 int ATF_REQUIRE_MSG (int,char*,char*,...) ;
 int KIOENABLE ;
 scalar_t__ atomic_load_64 (int *) ;
 int atomic_store_64 (int *,int ) ;
 scalar_t__ ioctl (int ,int ,size_t) ;
 char** modes ;
 size_t nitems (char**) ;
 int sleep (int ) ;

__attribute__((used)) static void *
multi_thread_test_helper(void *ptr)
{
 struct multi_thread_data *data = ptr;

 ATF_REQUIRE_MSG(ioctl(data->fd, KIOENABLE, data->mode) == 0,
     "Unable to enable kcov %s in thread %d",
     data->mode < nitems(modes) ? modes[data->mode] : "unknown mode",
     data->thread);

 atomic_store_64(&data->buf[0], 0);
 sleep(0);
 ATF_REQUIRE_MSG(atomic_load_64(&data->buf[0]) != 0,
     "No records found in thread %d", data->thread);

 return (((void*)0));
}
