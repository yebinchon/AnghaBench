
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_len; int* n_bytes; } ;
typedef TYPE_1__ netobj ;


 int LOG_DEBUG ;
 int MAX_NETOBJ_SZ ;
 int sprintf (char*,char*,int) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static void
log_netobj(netobj *obj)
{
 char objvalbuffer[(sizeof(char)*2)*MAX_NETOBJ_SZ+2];
 char objascbuffer[sizeof(char)*MAX_NETOBJ_SZ+1];
 unsigned int i, maxlen;
 char *tmp1, *tmp2;


 if (obj->n_len > MAX_NETOBJ_SZ) {
  syslog(LOG_DEBUG, "SOMEONE IS TRYING TO DO SOMETHING NASTY!\n");
  syslog(LOG_DEBUG, "netobj too large! Should be %d was %d\n",
      MAX_NETOBJ_SZ, obj->n_len);
 }

 maxlen = (obj->n_len < MAX_NETOBJ_SZ ? obj->n_len : MAX_NETOBJ_SZ);
 for (i=0, tmp1 = objvalbuffer, tmp2 = objascbuffer; i < maxlen;
     i++, tmp1 +=2, tmp2 +=1) {
  sprintf(tmp1,"%02X",*(obj->n_bytes+i));
  sprintf(tmp2,"%c",*(obj->n_bytes+i));
 }
 *tmp1 = '\0';
 *tmp2 = '\0';
 syslog(LOG_DEBUG,"netobjvals: %s\n",objvalbuffer);
 syslog(LOG_DEBUG,"netobjascs: %s\n",objascbuffer);
}
