
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsblobv1 {int dummy; } ;


 int stats_free (struct statsblobv1*) ;

void
stats_v1_blob_destroy(struct statsblobv1 *sb)
{

 stats_free(sb);
}
