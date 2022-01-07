
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_2__ {scalar_t__ bootcode; } ;


 int EFBIG ;
 int ENOMEM ;
 int ENXIO ;
 int * bootcode ;
 int errno ;
 int free (int *) ;
 int fstat (int,struct stat*) ;
 int * malloc (scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ read (int,int *,scalar_t__) ;
 TYPE_1__* scheme ;

int
scheme_bootcode(int fd)
{
 struct stat sb;

 if (scheme == ((void*)0) || scheme->bootcode == 0)
  return (ENXIO);

 if (fstat(fd, &sb) == -1)
  return (errno);
 if (sb.st_size > scheme->bootcode)
  return (EFBIG);

 bootcode = malloc(scheme->bootcode);
 if (bootcode == ((void*)0))
  return (ENOMEM);
 memset(bootcode, 0, scheme->bootcode);
 if (read(fd, bootcode, sb.st_size) != sb.st_size) {
  free(bootcode);
  bootcode = ((void*)0);
  return (errno);
 }
 return (0);
}
