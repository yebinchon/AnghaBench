
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct offload_settings {int rx_coalesce; int cong_algo; int sched_class; int tstamp; int sack; int nagle; int ecn; int ddp; int tls; int txq; int rxq; int mss; int offload; } ;


 int EINVAL ;
 int errno ;
 int free (char*) ;
 int parse_offload_settings_word (char*,char**,char const*,int*,struct offload_settings*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char const*) ;
 int warn (int *) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse_offload_settings(const char *settings_ro, struct offload_settings *os)
{
 const char *ws = " \f\n\r\v\t";
 char *settings, *s, *next;
 int rc, nsettings, neg;
 static const struct offload_settings default_settings = {
  .offload = 0,
  .rx_coalesce = -1,
  .cong_algo = -1,
  .sched_class = -1,
  .tstamp = -1,
  .sack = -1,
  .nagle = -1,
  .ecn = -1,
  .ddp = -1,
  .tls = -1,
  .txq = -1,
  .rxq = -1,
  .mss = -1,
 };

 *os = default_settings;

 next = settings = strdup(settings_ro);
 if (settings == ((void*)0)) {
  warn (((void*)0));
  return (errno);
 }

 nsettings = 0;
 rc = 0;
 neg = 0;
 while ((s = strsep(&next, ws)) != ((void*)0)) {
  if (*s == '\0')
   continue;
  nsettings++;
  rc = parse_offload_settings_word(s, &next, ws, &neg, os);
  if (rc != 0)
   goto done;
 }
 if (nsettings == 0) {
  warnx("no settings provided");
  rc = EINVAL;
  goto done;
 }
 if (neg > 0) {
  warnx("%d stray negation(s) at end of offload settings", neg);
  rc = EINVAL;
  goto done;
 }
done:
 free(settings);
 return (rc);
}
