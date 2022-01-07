
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct ioat_test {int raw_is_virtual; int verify; int raw_write; int zero_stats; int buffer_size; int chain_depth; int duration; int channel_index; void* transactions; int testkind; void* coalesce_period; } ;


 int EX_OK ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int IOAT_DMATEST ;
 int IOAT_TEST_DMA ;
 int IOAT_TEST_DMA_8K ;
 int IOAT_TEST_DMA_CRC ;
 int IOAT_TEST_DMA_CRC_COPY ;
 int IOAT_TEST_FILL ;
 int IOAT_TEST_MEMCPY ;
 int O_RDWR ;
 void* atoi (char*) ;
 int close (int) ;
 int getopt (int,char**,char*) ;
 int ioctl (int,int ,struct ioat_test*) ;
 int main_raw (struct ioat_test*,int,char**) ;
 int memset (struct ioat_test*,int ,int) ;
 int open (char*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int prettyprint (struct ioat_test*) ;
 int printf (char*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 struct ioat_test t;
 int fd, ch;
 bool fflag, rflag, Eflag, eflag, mflag, xflag, Xflag;
 unsigned modeflags;

 memset(&t, 0, sizeof(t));

 fflag = rflag = Eflag = eflag = mflag = xflag = Xflag = 0;
 modeflags = 0;

 while ((ch = getopt(argc, argv, "c:EefmrvVwxXz")) != -1) {
  switch (ch) {
  case 'c':
   t.coalesce_period = atoi(optarg);
   break;
  case 'E':
   Eflag = 1;
   modeflags++;
   break;
  case 'e':
   eflag = 1;
   modeflags++;
   break;
  case 'f':
   fflag = 1;
   modeflags++;
   break;
  case 'm':
   mflag = 1;
   modeflags++;
   break;
  case 'r':
   rflag = 1;
   modeflags++;
   break;
  case 'v':
   t.raw_is_virtual = 1;
   break;
  case 'V':
   t.verify = 1;
   break;
  case 'w':
   t.raw_write = 1;
   break;
  case 'x':
   xflag = 1;
   modeflags++;
   break;
  case 'X':
   Xflag = 1;
   modeflags++;
   break;
  case 'z':
   t.zero_stats = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 2)
  usage();

 if (modeflags > 1) {
  printf("Invalid: Cannot use >1 mode flag (-E, -e, -f, -m, -r, -x or -X)\n");
  usage();
 }


 t.buffer_size = 256 * 1024;
 t.chain_depth = 2;
 t.duration = 0;
 t.testkind = IOAT_TEST_DMA;

 if (fflag)
  t.testkind = IOAT_TEST_FILL;
 else if (Eflag || eflag) {
  t.testkind = IOAT_TEST_DMA_8K;
  t.buffer_size = 8 * 1024;
 } else if (mflag)
  t.testkind = IOAT_TEST_MEMCPY;
 else if (xflag)
  t.testkind = IOAT_TEST_DMA_CRC;
 else if (Xflag)
  t.testkind = IOAT_TEST_DMA_CRC_COPY;

 t.channel_index = atoi(argv[0]);
 if (t.channel_index > 8) {
  printf("Channel number must be between 0 and 7.\n");
  return (EX_USAGE);
 }

 if (rflag) {
  main_raw(&t, argc, argv);
  return (EX_OK);
 }

 t.transactions = atoi(argv[1]);

 if (argc >= 3) {
  t.buffer_size = atoi(argv[2]);
  if (t.buffer_size == 0) {
   printf("Buffer size must be greater than zero\n");
   return (EX_USAGE);
  }
 }

 if (argc >= 4) {
  t.chain_depth = atoi(argv[3]);
  if (t.chain_depth < 1) {
   printf("Chain length must be greater than zero\n");
   return (EX_USAGE);
  }
 }

 if (argc >= 5) {
  t.duration = atoi(argv[4]);
  if (t.duration < 1) {
   printf("Duration must be greater than zero\n");
   return (EX_USAGE);
  }
 }

 fd = open("/dev/ioat_test", O_RDWR);
 if (fd < 0) {
  printf("Cannot open /dev/ioat_test\n");
  return (EX_UNAVAILABLE);
 }

 (void)ioctl(fd, IOAT_DMATEST, &t);
 close(fd);

 return (prettyprint(&t));
}
