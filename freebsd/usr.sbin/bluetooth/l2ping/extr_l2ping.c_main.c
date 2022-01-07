
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_l2cap {int l2cap_len; char l2cap_bdaddr; void* l2cap_family; } ;
struct sockaddr {int dummy; } ;
struct ng_btsocket_l2cap_raw_ping {int result; int echo_size; char* echo_data; } ;
struct hostent {char* h_addr; char* h_name; } ;
typedef int src ;
typedef int sa ;
typedef int r ;
typedef int ng_l2cap_cmd_hdr_t ;
typedef int int32_t ;
typedef int dst ;
typedef char bdaddr_t ;


 void* AF_BLUETOOTH ;
 int BLUETOOTH_PROTO_L2CAP ;
 char* NG_HCI_BDADDR_ANY ;
 int NG_L2CAP_MAX_ECHO_SIZE ;
 int NG_L2CAP_MTU_MINIMUM ;
 int PATTERN_SIZE ;
 int PF_BLUETOOTH ;
 int SIOC_L2CAP_L2CA_PING ;
 int SOCK_RAW ;
 int asprintf (char**,char*,int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bt_aton (int ,char*) ;
 struct hostent* bt_gethostbyaddr (char const*,int,void*) ;
 struct hostent* bt_gethostbyname (int ) ;
 int bt_ntoa (char*,int *) ;
 scalar_t__ calloc (int,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*,...) ;
 int errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int h_errno ;
 int hstrerror (int ) ;
 int htonl (int) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_l2cap_raw_ping*,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (struct sockaddr_l2cap*,int ,int) ;
 int min (int,int ) ;
 int ntohl (int) ;
 int optarg ;
 char* pattern ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int stdout ;
 char* strdup (char*) ;
 char* strerror (int) ;
 int strtol (int ,char**,int) ;
 double tv2msec (struct timeval*) ;
 int tv_sub (struct timeval*,struct timeval*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 bdaddr_t src, dst;
 struct hostent *he;
 uint8_t *echo_data;
 struct sockaddr_l2cap sa;
 int32_t n, s, count, wait, flood, echo_size, numeric;
 char *endp, *rname;


 memcpy(&src, NG_HCI_BDADDR_ANY, sizeof(src));
 memcpy(&dst, NG_HCI_BDADDR_ANY, sizeof(dst));

 echo_data = (uint8_t *) calloc(NG_L2CAP_MAX_ECHO_SIZE, sizeof(uint8_t));
 if (echo_data == ((void*)0)) {
  fprintf(stderr, "Failed to allocate echo data buffer");
  exit(1);
 }






 echo_size = NG_L2CAP_MTU_MINIMUM - sizeof(ng_l2cap_cmd_hdr_t);
 count = -1;
 wait = 1;
 flood = 0;
 numeric = 0;


 while ((n = getopt(argc, argv, "a:c:fi:nS:s:h")) != -1) {
  switch (n) {
  case 'a':
   if (!bt_aton(optarg, &dst)) {
    if ((he = bt_gethostbyname(optarg)) == ((void*)0))
     errx(1, "%s: %s", optarg, hstrerror(h_errno));

    memcpy(&dst, he->h_addr, sizeof(dst));
   }
   break;

  case 'c':
   count = strtol(optarg, &endp, 10);
   if (count <= 0 || *endp != '\0')
    usage();
   break;

  case 'f':
   flood = 1;
   break;

  case 'i':
   wait = strtol(optarg, &endp, 10);
   if (wait <= 0 || *endp != '\0')
    usage();
   break;

  case 'n':
   numeric = 1;
   break;

  case 'S':
   if (!bt_aton(optarg, &src)) {
    if ((he = bt_gethostbyname(optarg)) == ((void*)0))
     errx(1, "%s: %s", optarg, hstrerror(h_errno));

    memcpy(&src, he->h_addr, sizeof(src));
   }
   break;

  case 's':
                        echo_size = strtol(optarg, &endp, 10);
                        if (echo_size < sizeof(int32_t) ||
       echo_size > NG_L2CAP_MAX_ECHO_SIZE ||
       *endp != '\0')
    usage();
   break;

  case 'h':
  default:
   usage();
   break;
  }
 }

 if (memcmp(&dst, NG_HCI_BDADDR_ANY, sizeof(dst)) == 0)
  usage();

 he = bt_gethostbyaddr((const char *)&dst, sizeof(dst), AF_BLUETOOTH);
 if (he == ((void*)0) || he->h_name == ((void*)0) || he->h_name[0] == '\0' || numeric)
  asprintf(&rname, "%s", bt_ntoa(&dst, ((void*)0)));
 else
  rname = strdup(he->h_name);

 if (rname == ((void*)0))
  errx(1, "Failed to create remote hostname");

 s = socket(PF_BLUETOOTH, SOCK_RAW, BLUETOOTH_PROTO_L2CAP);
 if (s < 0)
  err(2, "Could not create socket");

 memset(&sa, 0, sizeof(sa));
 sa.l2cap_len = sizeof(sa);
 sa.l2cap_family = AF_BLUETOOTH;
 memcpy(&sa.l2cap_bdaddr, &src, sizeof(sa.l2cap_bdaddr));

 if (bind(s, (struct sockaddr *) &sa, sizeof(sa)) < 0)
  err(3,
"Could not bind socket, src bdaddr=%s", bt_ntoa(&sa.l2cap_bdaddr, ((void*)0)));

 memset(&sa, 0, sizeof(sa));
 sa.l2cap_len = sizeof(sa);
 sa.l2cap_family = AF_BLUETOOTH;
 memcpy(&sa.l2cap_bdaddr, &dst, sizeof(sa.l2cap_bdaddr));

 if (connect(s, (struct sockaddr *) &sa, sizeof(sa)) < 0)
  err(4,
"Could not connect socket, dst bdaddr=%s", bt_ntoa(&sa.l2cap_bdaddr, ((void*)0)));


 for (n = 0; n < echo_size; ) {
  int32_t avail = min(echo_size - n, PATTERN_SIZE);

  memcpy(echo_data + n, pattern, avail);
  n += avail;
 }


 for (n = 0; count == -1 || count > 0; n ++) {
  struct ng_btsocket_l2cap_raw_ping r;
  struct timeval a, b;
  int32_t fail;

  if (gettimeofday(&a, ((void*)0)) < 0)
   err(5, "Could not gettimeofday(a)");

  fail = 0;
  *((int32_t *) echo_data) = htonl(n);

  r.result = 0;
  r.echo_size = echo_size;
  r.echo_data = echo_data;
  if (ioctl(s, SIOC_L2CAP_L2CA_PING, &r, sizeof(r)) < 0) {
   r.result = errno;
   fail = 1;




  }

  if (gettimeofday(&b, ((void*)0)) < 0)
   err(7, "Could not gettimeofday(b)");

  tv_sub(&b, &a);

  fprintf(stdout,
"%d bytes from %s seq_no=%d time=%.3f ms result=%#x %s\n",
   r.echo_size,
   rname,
   ntohl(*((int32_t *)(r.echo_data))),
   tv2msec(&b), r.result,
   ((fail == 0)? "" : strerror(errno)));

  if (!flood) {

   a.tv_sec = wait;
   a.tv_usec = 0;
   select(0, ((void*)0), ((void*)0), ((void*)0), &a);
  }

  if (count != -1)
   count --;
 }

 free(rname);
 free(echo_data);
 close(s);

 return (0);
}
