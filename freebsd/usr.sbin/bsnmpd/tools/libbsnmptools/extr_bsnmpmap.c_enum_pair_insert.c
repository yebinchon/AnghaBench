
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enum_pairs {int dummy; } ;
struct enum_pair {int enum_val; int * enum_str; } ;
typedef int int32_t ;


 int LOG_ERR ;
 int STAILQ_INSERT_TAIL (struct enum_pairs*,struct enum_pair*,int ) ;
 struct enum_pair* calloc (int,int) ;
 int errno ;
 int free (struct enum_pair*) ;
 int link ;
 int * strdup (char*) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

int32_t
enum_pair_insert(struct enum_pairs *headp, int32_t enum_val, char *enum_str)
{
 struct enum_pair *e_new;

 if ((e_new = calloc(1, sizeof(struct enum_pair))) == ((void*)0)) {
  syslog(LOG_ERR, "calloc() failed: %s", strerror(errno));
  return (-1);
 }

 if ((e_new->enum_str = strdup(enum_str)) == ((void*)0)) {
  syslog(LOG_ERR, "strdup() failed: %s", strerror(errno));
  free(e_new);
  return (-1);
 }

 e_new->enum_val = enum_val;
 STAILQ_INSERT_TAIL(headp, e_new, link);

 return (1);

}
