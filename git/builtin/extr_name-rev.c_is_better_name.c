
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct rev_name {int from_tag; scalar_t__ taggerdate; int distance; } ;



__attribute__((used)) static int is_better_name(struct rev_name *name,
     timestamp_t taggerdate,
     int distance,
     int from_tag)
{




 if (from_tag && name->from_tag)
  return (name->taggerdate > taggerdate ||
   (name->taggerdate == taggerdate &&
    name->distance > distance));





 if (name->from_tag != from_tag)
  return from_tag;





 if (name->distance != distance)
  return name->distance > distance;


 if (name->taggerdate != taggerdate)
  return name->taggerdate > taggerdate;


 return 0;
}
