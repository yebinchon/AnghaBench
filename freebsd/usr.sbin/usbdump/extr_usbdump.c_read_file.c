
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usbcap {int rfd; } ;


 int EXIT_FAILURE ;
 int EX_SOFTWARE ;
 int err (int ,char*) ;
 int errx (int ,char*) ;
 int fix_packets (int*,int) ;
 int free (int*) ;
 int le32toh (int) ;
 int* malloc (int) ;
 int print_packets (int*,int) ;
 int read (int ,int*,int) ;
 int uf_minor ;

__attribute__((used)) static void
read_file(struct usbcap *p)
{
 int datalen;
 int ret;
 uint8_t *data;

 while ((ret = read(p->rfd, &datalen, sizeof(int))) == sizeof(int)) {
  datalen = le32toh(datalen);
  data = malloc(datalen);
  if (data == ((void*)0))
   errx(EX_SOFTWARE, "Out of memory.");
  ret = read(p->rfd, data, datalen);
  if (ret != datalen) {
   err(EXIT_FAILURE, "Could not read complete "
       "USB data payload");
  }
  if (uf_minor == 2)
   fix_packets(data, datalen);

  print_packets(data, datalen);
  free(data);
 }
}
