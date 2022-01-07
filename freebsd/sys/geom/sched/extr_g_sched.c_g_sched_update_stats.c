
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {scalar_t__ bio_cmd; scalar_t__ bio_length; } ;
struct TYPE_2__ {int gs_write_bytes_in_flight; int gs_writes_in_flight; int gs_bytes_in_flight; int gs_in_flight; int gs_done; } ;


 scalar_t__ BIO_WRITE ;
 TYPE_1__ me ;

__attribute__((used)) static void
g_sched_update_stats(struct bio *bio)
{

 me.gs_done++;
 me.gs_in_flight--;
 me.gs_bytes_in_flight -= bio->bio_length;
 if (bio->bio_cmd == BIO_WRITE) {
  me.gs_writes_in_flight--;
  me.gs_write_bytes_in_flight -= bio->bio_length;
 }
}
