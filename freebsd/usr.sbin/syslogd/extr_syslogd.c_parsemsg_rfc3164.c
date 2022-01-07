
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_isdst; } ;
struct logtime {struct tm tm; scalar_t__ usec; } ;
typedef int line ;


 int MAXHOSTNAMELEN ;
 int MAXLINE ;
 size_t MIN (int ,size_t) ;
 int RFC3164_DATEFMT ;
 int RFC3164_DATELEN ;
 int RemoteAddDate ;
 scalar_t__ RemoteHostname ;
 int assert (int) ;
 int dprintf (char*,char const*,char*) ;
 int localtime_r (scalar_t__*,struct tm*) ;
 int logmsg (int,struct logtime const*,char const*,char const*,char const*,int *,int *,char*,int ) ;
 scalar_t__ mktime (struct tm*) ;
 int parsemsg_remove_unsafe_characters (char*,char*,int) ;
 int parsemsg_rfc3164_app_name_procid (char**,char const**,char const**) ;
 size_t strlen (char*) ;
 char* strptime (char*,int ,struct tm*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
parsemsg_rfc3164(const char *from, int pri, char *msg)
{
 struct tm tm_parsed;
 const struct logtime *timestamp;
 struct logtime timestamp_remote;
 const char *app_name, *procid;
 size_t i, msglen;
 char line[MAXLINE + 1];






 timestamp = ((void*)0);
 if (strptime(msg, RFC3164_DATEFMT, &tm_parsed) ==
     msg + RFC3164_DATELEN && msg[RFC3164_DATELEN] == ' ') {
  msg += RFC3164_DATELEN + 1;
  if (!RemoteAddDate) {
   struct tm tm_now;
   time_t t_now;
   int year;
   t_now = time(((void*)0));
   localtime_r(&t_now, &tm_now);
   for (year = tm_now.tm_year + 1;; --year) {
    assert(year >= tm_now.tm_year - 1);
    timestamp_remote.tm = tm_parsed;
    timestamp_remote.tm.tm_year = year;
    timestamp_remote.tm.tm_isdst = -1;
    timestamp_remote.usec = 0;
    if (mktime(&timestamp_remote.tm) <
        t_now + 7 * 24 * 60 * 60)
     break;
   }
   timestamp = &timestamp_remote;
  }




  msglen = strlen(msg);
  for (i = 0; i < MIN(MAXHOSTNAMELEN, msglen); i++) {
   if (msg[i] == ' ') {
    if (RemoteHostname) {
     msg[i] = '\0';
     from = msg;
    }
    msg += i + 1;
    break;
   }



   if (msg[i] == ':')
    break;
  }
  if (i == MIN(MAXHOSTNAMELEN, msglen)) {
   dprintf("Invalid HOSTNAME from %s: %s\n", from, msg);
   return;
  }
 }


 parsemsg_rfc3164_app_name_procid(&msg, &app_name, &procid);
 parsemsg_remove_unsafe_characters(msg, line, sizeof(line));
 logmsg(pri, timestamp, from, app_name, procid, ((void*)0), ((void*)0), line, 0);
}
