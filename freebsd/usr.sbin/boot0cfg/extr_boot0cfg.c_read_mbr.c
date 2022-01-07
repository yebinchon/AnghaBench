
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int ssize_t ;
typedef int buf ;


 int MBRSIZE ;
 int OFF_MAGIC ;
 int O_RDONLY ;
 int SEEK_SET ;
 int boot0bs (int *) ;
 int boot0version (int *) ;
 int close (int) ;
 int cv2 (int *) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 int lseek (int,int ,int ) ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;
 int open (char const*,int ) ;
 int read (int,int *,int) ;

__attribute__((used)) static int
read_mbr(const char *disk, u_int8_t **mbr, int check_version)
{
    u_int8_t buf[MBRSIZE];
    int mbr_size, fd;
    int ver;
    ssize_t n;

    if ((fd = open(disk, O_RDONLY)) == -1)
        err(1, "open %s", disk);
    if ((n = read(fd, buf, MBRSIZE)) == -1)
        err(1, "read %s", disk);
    if (n != MBRSIZE)
        errx(1, "%s: short read", disk);
    if (cv2(buf + OFF_MAGIC) != 0xaa55)
        errx(1, "%s: bad magic", disk);

    if (! (ver = boot0bs(buf))) {
 if (check_version)
     errx(1, "%s: unknown or incompatible boot code", disk);
    } else if (boot0version(buf) == 0x101) {
 mbr_size = 1024;
 if ((*mbr = malloc(mbr_size)) == ((void*)0))
     errx(1, "%s: unable to allocate read buffer", disk);
 if (lseek(fd, 0, SEEK_SET) == -1 ||
     (n = read(fd, *mbr, mbr_size)) == -1)
     err(1, "%s", disk);
 if (n != mbr_size)
     errx(1, "%s: short read", disk);
 close(fd);
 return (mbr_size);
    }
    if ((*mbr = malloc(sizeof(buf))) == ((void*)0))
 errx(1, "%s: unable to allocate MBR buffer", disk);
    memcpy(*mbr, buf, sizeof(buf));
    close(fd);

    return sizeof(buf);
}
