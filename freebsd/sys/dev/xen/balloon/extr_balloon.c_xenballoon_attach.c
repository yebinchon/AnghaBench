
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_5__ {unsigned long driver_pages; unsigned long hard_limit; scalar_t__ balloon_high; scalar_t__ balloon_low; int current_pages; int target_pages; } ;
struct TYPE_4__ {int callback; } ;


 int MTX_DEF ;
 int balloon_mutex ;
 int balloon_process ;
 TYPE_3__ bs ;
 int device_printf (int ,char*) ;
 int kproc_create (int ,int *,int *,int ,int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int realmem ;
 TYPE_1__ target_watch ;
 int watch_target ;
 int xs_register_watch (TYPE_1__*) ;

__attribute__((used)) static int
xenballoon_attach(device_t dev)
{
 int err;

 mtx_init(&balloon_mutex, "balloon_mutex", ((void*)0), MTX_DEF);

 bs.current_pages = realmem;
 bs.target_pages = bs.current_pages;
 bs.balloon_low = 0;
 bs.balloon_high = 0;
 bs.driver_pages = 0UL;
 bs.hard_limit = ~0UL;

 kproc_create(balloon_process, ((void*)0), ((void*)0), 0, 0, "balloon");

 target_watch.callback = watch_target;

 err = xs_register_watch(&target_watch);
 if (err)
  device_printf(dev,
      "xenballon: failed to set balloon watcher\n");

 return (err);
}
