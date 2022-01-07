
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int locale; int evt_class; scalar_t__ reserved; } ;
union mfi_evt {TYPE_1__ members; } ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef size_t u_int ;
struct mfi_evt_log_state {scalar_t__ boot_seq_num; scalar_t__ newest_seq_num; } ;
struct mfi_evt_list {size_t count; TYPE_2__* event; } ;
struct mfi_evt_detail {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ seq; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int MFI_EVT_CLASS_WARNING ;
 int MFI_EVT_LOCALE_ALL ;
 scalar_t__ MFI_STAT_NOT_FOUND ;
 scalar_t__ MFI_STAT_OK ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int free (struct mfi_evt_list*) ;
 int getopt (int,char**,char*) ;
 int getpagesize () ;
 struct mfi_evt_list* malloc (int) ;
 int mfi_decode_evt (int,TYPE_2__*,int) ;
 scalar_t__ mfi_event_get_info (int,struct mfi_evt_log_state*,int *) ;
 scalar_t__ mfi_get_events (int,struct mfi_evt_list*,int,union mfi_evt,scalar_t__,scalar_t__*) ;
 int mfi_open (int ,int ) ;
 int mfi_status (scalar_t__) ;
 int mfi_unit ;
 int optarg ;
 int optind ;
 int parse_class (int ,int *) ;
 int parse_locale (int ,int *) ;
 scalar_t__ parse_seq (struct mfi_evt_log_state*,char*,scalar_t__*) ;
 long strtol (int ,char**,int ) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
show_events(int ac, char **av)
{
 struct mfi_evt_log_state info;
 struct mfi_evt_list *list;
 union mfi_evt filter;
 bool first;
 long val;
 char *cp;
 ssize_t size;
 uint32_t seq, start, stop;
 uint16_t locale;
 uint8_t status;
 int ch, error, fd, num_events, verbose;
 u_int i;

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 if (mfi_event_get_info(fd, &info, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to get event log info");
  close(fd);
  return (error);
 }


 num_events = 15;
 filter.members.reserved = 0;
 filter.members.locale = MFI_EVT_LOCALE_ALL;
 filter.members.evt_class = MFI_EVT_CLASS_WARNING;
 start = info.boot_seq_num;
 stop = info.newest_seq_num;
 verbose = 0;


 optind = 1;
 while ((ch = getopt(ac, av, "c:l:n:v")) != -1) {
  switch (ch) {
  case 'c':
   if (parse_class(optarg, &filter.members.evt_class) < 0) {
    error = errno;
    warn("Error parsing event class");
    close(fd);
    return (error);
   }
   break;
  case 'l':
   if (parse_locale(optarg, &locale) < 0) {
    error = errno;
    warn("Error parsing event locale");
    close(fd);
    return (error);
   }
   filter.members.locale = locale;
   break;
  case 'n':
   val = strtol(optarg, &cp, 0);
   if (*cp != '\0' || val <= 0) {
    warnx("Invalid event count");
    close(fd);
    return (EINVAL);
   }
   num_events = val;
   break;
  case 'v':
   verbose = 1;
   break;
  case '?':
  default:
   close(fd);
   return (EINVAL);
  }
 }
 ac -= optind;
 av += optind;


 size = sizeof(struct mfi_evt_list) + sizeof(struct mfi_evt_detail) *
     (num_events - 1);
 if (size > getpagesize()) {
  warnx("Event count is too high");
  close(fd);
  return (EINVAL);
 }


 if (ac > 2) {
  warnx("show events: extra arguments");
  close(fd);
  return (EINVAL);
 }
 if (ac > 0 && parse_seq(&info, av[0], &start) < 0) {
  error = errno;
  warn("Error parsing starting sequence number");
  close(fd);
  return (error);
 }
 if (ac > 1 && parse_seq(&info, av[1], &stop) < 0) {
  error = errno;
  warn("Error parsing ending sequence number");
  close(fd);
  return (error);
 }

 list = malloc(size);
 if (list == ((void*)0)) {
  warnx("malloc failed");
  close(fd);
  return (ENOMEM);
 }
 first = 1;
 seq = start;
 for (;;) {
  if (mfi_get_events(fd, list, num_events, filter, seq,
      &status) < 0) {
   error = errno;
   warn("Failed to fetch events");
   free(list);
   close(fd);
   return (error);
  }
  if (status == MFI_STAT_NOT_FOUND) {
   break;
  }
  if (status != MFI_STAT_OK) {
   warnx("Error fetching events: %s", mfi_status(status));
   free(list);
   close(fd);
   return (EIO);
  }

  for (i = 0; i < list->count; i++) {







   if (list->event[i].seq > stop) {
    if (start <= stop)
     goto finish;
    else if (list->event[i].seq < start)
     goto finish;
   }
   mfi_decode_evt(fd, &list->event[i], verbose);
   first = 0;
  }






  seq = list->event[list->count - 1].seq + 1;

 }
finish:
 if (first)
  warnx("No matching events found");

 free(list);
 close(fd);

 return (0);
}
