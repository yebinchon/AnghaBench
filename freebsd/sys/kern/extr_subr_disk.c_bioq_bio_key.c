
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uoff_t ;
struct bio_queue_head {scalar_t__ last_offset; } ;
struct bio {scalar_t__ bio_offset; } ;



__attribute__((used)) static inline uoff_t
bioq_bio_key(struct bio_queue_head *head, struct bio *bp)
{

 return ((uoff_t)(bp->bio_offset - head->last_offset));
}
