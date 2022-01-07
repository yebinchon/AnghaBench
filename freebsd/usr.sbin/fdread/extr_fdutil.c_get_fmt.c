
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_type {int size; int sectrac; int heads; int tracks; int secsize; } ;
typedef enum fd_drivetype { ____Placeholder_fd_drivetype } fd_drivetype ;







 struct fd_type* fd_types_12m ;
 struct fd_type* fd_types_144m ;
 struct fd_type* fd_types_288m ;
 struct fd_type* fd_types_360k ;
 struct fd_type* fd_types_720k ;
 struct fd_type* fd_types_auto ;

struct fd_type *
get_fmt(int size, enum fd_drivetype type)
{
 int i, n;
 struct fd_type *fdtp;

 switch (type) {
 default:
  return (0);

 case 129:
  fdtp = fd_types_360k;
  n = sizeof fd_types_360k / sizeof(struct fd_type);
  break;

 case 128:
  fdtp = fd_types_720k;
  n = sizeof fd_types_720k / sizeof(struct fd_type);
  break;

 case 132:
  fdtp = fd_types_12m;
  n = sizeof fd_types_12m / sizeof(struct fd_type);
  break;

 case 131:
  fdtp = fd_types_144m;
  n = sizeof fd_types_144m / sizeof(struct fd_type);
  break;

 case 130:
  fdtp = fd_types_288m;
  n = sizeof fd_types_288m / sizeof(struct fd_type);
  break;
 }

 if (size == -1)
  return fd_types_auto;

 for (i = 0; i < n; i++, fdtp++) {
  fdtp->size = fdtp->sectrac * fdtp->heads * fdtp->tracks;
  if (((128 << fdtp->secsize) * fdtp->size / 1024) == size)
   return (fdtp);
 }
 return (0);
}
