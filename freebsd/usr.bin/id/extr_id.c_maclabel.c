
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mac_t ;


 int errno ;
 int errx (int,char*,int ) ;
 int free (char*) ;
 int mac_free (int ) ;
 int mac_get_proc (int ) ;
 int mac_prepare_process_label (int *) ;
 int mac_to_text (int ,char**) ;
 int printf (char*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static void
maclabel(void)
{
 char *string;
 mac_t label;
 int error;

 error = mac_prepare_process_label(&label);
 if (error == -1)
  errx(1, "mac_prepare_type: %s", strerror(errno));

 error = mac_get_proc(label);
 if (error == -1)
  errx(1, "mac_get_proc: %s", strerror(errno));

 error = mac_to_text(label, &string);
 if (error == -1)
  errx(1, "mac_to_text: %s", strerror(errno));

 (void)printf("%s\n", string);
 mac_free(label);
 free(string);
}
