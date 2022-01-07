
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 char const* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int close (int) ;
 int dump_amd_msr_pm (char const*,int) ;
 int dump_intel_msr_pm (char const*,int) ;
 char* mmap (int *,int,int ,int ,int,int ) ;
 int munmap (void*,int) ;
 int open (char*,int ,int ) ;
 int perror (char*) ;

__attribute__((used)) static int
dump_msr_bitmap(int vcpu, uint64_t addr, bool cpu_intel)
{
 int error, fd, map_size;
 const char *bitmap;

 error = -1;
 bitmap = MAP_FAILED;

 fd = open("/dev/mem", O_RDONLY, 0);
 if (fd < 0) {
  perror("Couldn't open /dev/mem");
  goto done;
 }

 if (cpu_intel)
  map_size = PAGE_SIZE;
 else
  map_size = 2 * PAGE_SIZE;

 bitmap = mmap(((void*)0), map_size, PROT_READ, MAP_SHARED, fd, addr);
 if (bitmap == MAP_FAILED) {
  perror("mmap failed");
  goto done;
 }

 if (cpu_intel)
  dump_intel_msr_pm(bitmap, vcpu);
 else
  dump_amd_msr_pm(bitmap, vcpu);

 error = 0;
done:
 if (bitmap != MAP_FAILED)
  munmap((void *)bitmap, map_size);
 if (fd >= 0)
  close(fd);

 return (error);
}
