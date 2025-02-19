
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ off_t ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileMapping (scalar_t__,int *,int ,int ,int ,int *) ;
 int EFBIG ;
 int EINVAL ;
 scalar_t__ ERROR_COMMITMENT_LIMIT ;
 int FILE_MAP_COPY ;
 int FILE_MAP_READ ;
 int GetFileSizeEx (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 void* MapViewOfFileEx (scalar_t__,int ,int,int,size_t,void*) ;
 int PAGE_READONLY ;
 int PAGE_WRITECOPY ;
 int PROT_READ ;
 scalar_t__ _get_osfhandle (int) ;
 int die (char*) ;
 int errno ;
 int warning (char*) ;
 size_t xsize_t (scalar_t__) ;

void *git_mmap(void *start, size_t length, int prot, int flags, int fd, off_t offset)
{
 HANDLE osfhandle, hmap;
 void *temp;
 LARGE_INTEGER len;
 uint64_t o = offset;
 uint32_t l = o & 0xFFFFFFFF;
 uint32_t h = (o >> 32) & 0xFFFFFFFF;

 osfhandle = (HANDLE)_get_osfhandle(fd);
 if (!GetFileSizeEx(osfhandle, &len))
  die("mmap: could not determine filesize");

 if ((length + offset) > len.QuadPart)
  length = xsize_t(len.QuadPart - offset);

 if (!(flags & MAP_PRIVATE))
  die("Invalid usage of mmap when built with USE_WIN32_MMAP");

 hmap = CreateFileMapping(osfhandle, ((void*)0),
  prot == PROT_READ ? PAGE_READONLY : PAGE_WRITECOPY, 0, 0, ((void*)0));

 if (!hmap) {
  errno = EINVAL;
  return MAP_FAILED;
 }

 temp = MapViewOfFileEx(hmap, prot == PROT_READ ?
   FILE_MAP_READ : FILE_MAP_COPY, h, l, length, start);

 if (!CloseHandle(hmap))
  warning("unable to close file mapping handle");

 if (temp)
  return temp;

 errno = GetLastError() == ERROR_COMMITMENT_LIMIT ? EFBIG : EINVAL;
 return MAP_FAILED;
}
