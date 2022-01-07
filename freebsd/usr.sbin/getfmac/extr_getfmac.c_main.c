
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mac_t ;


 int EX_OK ;
 int exit (int ) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int mac_free (int ) ;
 int mac_get_file (char*,int ) ;
 int mac_get_link (char*,int ) ;
 int mac_prepare (int *,char*) ;
 int mac_prepare_file_label (int *) ;
 int mac_to_text (int ,char**) ;
 int optind ;
 int perror (char*) ;
 int printf (char*,char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 char *labellist, *string;
 mac_t label;
 int ch, hflag;
 int error, i;

 labellist = ((void*)0);
 hflag = 0;
 while ((ch = getopt(argc, argv, "hl:")) != -1) {
  switch (ch) {
  case 'h':
   hflag = 1;
   break;
  case 'l':
   if (labellist != ((void*)0))
    usage();
   labellist = argv[optind - 1];
   break;
  default:
   usage();
  }

 }

 for (i = optind; i < argc; i++) {
  if (labellist != ((void*)0))
   error = mac_prepare(&label, labellist);
  else
   error = mac_prepare_file_label(&label);

  if (error != 0) {
   perror("mac_prepare");
   return (-1);
  }

  if (hflag)
   error = mac_get_link(argv[i], label);
  else
   error = mac_get_file(argv[i], label);
  if (error) {
   perror(argv[i]);
   mac_free(label);
   continue;
  }

  error = mac_to_text(label, &string);
  if (error != 0)
   perror("mac_to_text");
  else {
   printf("%s: %s\n", argv[i], string);
   free(string);
  }
  mac_free(label);
 }

 exit(EX_OK);
}
