
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int ExtPageLength; int ExtPageType; int PageType; } ;
struct TYPE_3__ {int PageLength; int PageType; } ;
typedef TYPE_1__ MPI2_CONFIG_PAGE_HEADER ;
typedef TYPE_2__ MPI2_CONFIG_EXTENDED_PAGE_HEADER ;


 int EINVAL ;
 int HD_REVERSED ;
 int close (int) ;
 int errno ;
 int free (void*) ;
 char* get_page_name (int) ;
 int hexdump (void*,int,int *,int) ;
 int mps_ioc_status (int ) ;
 int mps_open (int ) ;
 void* mps_read_config_page (int,int,int,scalar_t__,int *) ;
 void* mps_read_extended_config_page (int,int,int ,int,scalar_t__,int *) ;
 int mps_unit ;
 int printf (char*,int,char*,int,char*) ;
 int strtoul (char*,int *,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static int
show_cfgpage(int ac, char **av)
{
 MPI2_CONFIG_PAGE_HEADER *hdr;
 MPI2_CONFIG_EXTENDED_PAGE_HEADER *ehdr;
 void *data;
 uint32_t addr;
 uint16_t IOCStatus;
 uint8_t page, num;
 int fd, error, len, attrs;
 char *pgname, *pgattr;

 fd = mps_open(mps_unit);
 if (fd < 0) {
  error = errno;
  warn("mps_open");
  return (error);
 }

 addr = 0;
 num = 0;
 page = 0;

 switch (ac) {
 case 4:
  addr = (uint32_t)strtoul(av[3], ((void*)0), 0);
 case 3:
  num = (uint8_t)strtoul(av[2], ((void*)0), 0);
 case 2:
  page = (uint8_t)strtoul(av[1], ((void*)0), 0);
  break;
 default:
  errno = EINVAL;
  warn("cfgpage: not enough arguments");
  return (EINVAL);
 }

 if (page >= 0x10)
  data = mps_read_extended_config_page(fd, page, 0, num, addr,
      &IOCStatus);
  else
  data = mps_read_config_page(fd, page, num, addr, &IOCStatus);

 if (data == ((void*)0)) {
  error = errno;
  warn("Error retrieving cfg page: %s\n",
      mps_ioc_status(IOCStatus));
  return (error);
 }

 if (page >= 0x10) {
  ehdr = data;
  len = ehdr->ExtPageLength * 4;
  page = ehdr->ExtPageType;
  attrs = ehdr->PageType >> 4;
 } else {
  hdr = data;
  len = hdr->PageLength * 4;
  page = hdr->PageType & 0xf;
  attrs = hdr->PageType >> 4;
 }

 pgname = get_page_name(page);
 if (attrs == 0)
  pgattr = "Read-only";
 else if (attrs == 1)
  pgattr = "Read-Write";
 else if (attrs == 2)
  pgattr = "Read-Write Persistent";
 else
  pgattr = "Unknown Page Attribute";

 printf("Page 0x%x: %s %d, %s\n", page, pgname, num, pgattr);
 hexdump(data, len, ((void*)0), HD_REVERSED | 4);
 free(data);
 close(fd);
 return (0);
}
