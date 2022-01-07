
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct defined_value {void* d_value; void* d_name; } ;


 int TAILQ_INSERT_TAIL (int *,struct defined_value*,int ) ;
 struct defined_value* calloc (int,int) ;
 void* checked_strdup (char const*) ;
 int d_next ;
 char* defined_find (char const*) ;
 int defined_values ;
 int log_debugx (char*,char const*,char const*) ;
 int log_err (int,char*) ;
 int log_errx (int,char*,char const*) ;

__attribute__((used)) static void
defined_add(const char *name, const char *value)
{
 struct defined_value *d;
 const char *found;

 found = defined_find(name);
 if (found != ((void*)0))
  log_errx(1, "variable %s already defined", name);

 log_debugx("defining variable %s=%s", name, value);

 d = calloc(1, sizeof(*d));
 if (d == ((void*)0))
  log_err(1, "calloc");
 d->d_name = checked_strdup(name);
 d->d_value = checked_strdup(value);

 TAILQ_INSERT_TAIL(&defined_values, d, d_next);
}
