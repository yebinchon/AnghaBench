
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* caddr_t ;


 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_CREAT ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_SET ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ lseek (int,int,int ) ;
 int memset (char*,int,int) ;
 char* mmap (int ,int,int,int ,int,int ) ;
 int open (char*,int,...) ;
 int unlink (char*) ;
 scalar_t__ write (int,char*,int) ;

int main(int argc, char** argv)
{
    int fd, fd2;
    caddr_t addr;
    char zeros[4096];
    char ones[200];

    memset(zeros, 0, sizeof zeros);
    memset(ones, 1, sizeof ones);
    fd = open("test2.data", O_RDWR);
    if (fd < 0)
 err(1, "opening file");
    if (lseek(fd, 600, SEEK_SET) < 0)
 err(1, "seeking");

    if (write(fd, ones, sizeof ones) < 0)
 err(1, "writing ones");

    addr = mmap(0, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
    if (addr == MAP_FAILED)
 err(1, "mapping");
    unlink("test2.scratch");
    fd2 = open("test2.scratch", O_RDWR|O_CREAT, 0666);
    if (fd2 < 0)
 err(1, "creating scratch");

    if (write(fd2, addr, 4096) < 0)
 err(1, "writing scratch");
}
