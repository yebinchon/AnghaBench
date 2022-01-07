
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {void* r_port; int r_protocol; int r_idtype; void* r_id; } ;


 int EINVAL ;
 int GID_STRING ;
 int M_PORTACL ;
 int M_WAITOK ;
 int M_ZERO ;
 int RULE_GID ;
 int RULE_PROTO_TCP ;
 int RULE_PROTO_UDP ;
 int RULE_UID ;
 int TCP_STRING ;
 int UDP_STRING ;
 int UID_STRING ;
 int free (struct rule*,int ) ;
 struct rule* malloc (int,int ,int) ;
 scalar_t__ strcmp (char*,int ) ;
 char* strsep (char**,char*) ;
 void* strtol (char*,char**,int) ;

__attribute__((used)) static int
parse_rule_element(char *element, struct rule **rule)
{
 char *idtype, *id, *protocol, *portnumber, *p;
 struct rule *new;
 int error;

 error = 0;
 new = malloc(sizeof(*new), M_PORTACL, M_ZERO | M_WAITOK);

 idtype = strsep(&element, ":");
 if (idtype == ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 id = strsep(&element, ":");
 if (id == ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 new->r_id = strtol(id, &p, 10);
 if (*p != '\0') {
  error = EINVAL;
  goto out;
 }
 if (strcmp(idtype, UID_STRING) == 0)
  new->r_idtype = RULE_UID;
 else if (strcmp(idtype, GID_STRING) == 0)
  new->r_idtype = RULE_GID;
 else {
  error = EINVAL;
  goto out;
 }
 protocol = strsep(&element, ":");
 if (protocol == ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 if (strcmp(protocol, TCP_STRING) == 0)
  new->r_protocol = RULE_PROTO_TCP;
 else if (strcmp(protocol, UDP_STRING) == 0)
  new->r_protocol = RULE_PROTO_UDP;
 else {
  error = EINVAL;
  goto out;
 }
 portnumber = element;
 if (portnumber == ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 new->r_port = strtol(portnumber, &p, 10);
 if (*p != '\0') {
  error = EINVAL;
  goto out;
 }

out:
 if (error != 0) {
  free(new, M_PORTACL);
  *rule = ((void*)0);
 } else
  *rule = new;
 return (error);
}
