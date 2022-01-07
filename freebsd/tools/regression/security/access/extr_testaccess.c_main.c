
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int ROOT_UID ;
 int R_OK ;
 int TEST_GID_ONE ;
 int TEST_GID_TWO ;
 int TEST_UID_ONE ;
 int TEST_UID_TWO ;
 int WHEEL_GID ;
 int access (char*,int ) ;
 int cleanup () ;
 int eaccess (char*,int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ geteuid () ;
 int perror (char*) ;
 int restoreprivilege () ;
 int setgroups (int ,int *) ;
 int setresgid (int ,int ,int ) ;
 int setresuid (int ,int ,int ) ;
 int setup () ;
 int stderr ;

int
main(int argc, char *argv[])
{
 int error, errorseen;

 if (geteuid() != 0) {
  fprintf(stderr, "testaccess must run as root.\n");
  exit (EXIT_FAILURE);
 }

 error = setup();
 if (error) {
  cleanup();
  exit (EXIT_FAILURE);
 }


 error = setresuid(ROOT_UID, ROOT_UID, ROOT_UID);
 if (error) {
  perror("setresuid");
  cleanup();
 }


 error = setgroups(0, ((void*)0));
 if (error) {
  perror("setgroups");
  cleanup();
 }


 error = setresgid(WHEEL_GID, WHEEL_GID, WHEEL_GID);
 if (error) {
  perror("setresgid");
  cleanup();
 }






 error = setresuid(TEST_UID_ONE, TEST_UID_ONE, ROOT_UID);
 if (error) {
  perror("setresuid.1");
  cleanup();
  exit (EXIT_FAILURE);
 }

 errorseen = 0;

 error = access("test1", R_OK);
 if (!error) {
  fprintf(stderr, "saved uid used instead of real uid\n");
  errorseen++;
 }
 error = restoreprivilege();
 if (error) {
  perror("restoreprivilege");
  cleanup();
  exit (EXIT_FAILURE);
 }

 error = setresuid(TEST_UID_ONE, TEST_UID_TWO, ROOT_UID);
 if (error) {
  perror("setresid.2");
  cleanup();
  exit (EXIT_FAILURE);
 }


 error = access("test2", R_OK);
 if (error) {
  fprintf(stderr, "Effective uid was used instead of real uid in access().\n");
  errorseen++;
 }
 error = access("test3", R_OK);
 if (!error) {
  fprintf(stderr, "Effective uid was used instead of real uid in access().\n");
  errorseen++;
 }
 error = restoreprivilege();
 if (error) {
  perror("restoreprivilege");
  cleanup();
  exit (EXIT_FAILURE);
 }

 error = setresgid(TEST_GID_ONE, TEST_GID_TWO, WHEEL_GID);
 if (error) {
  perror("setresgid.1");
  cleanup();
  exit (EXIT_FAILURE);
 }


 error = setresuid(TEST_UID_ONE, TEST_UID_ONE, ROOT_UID);
 if (error) {
  perror("setresuid.3");
  cleanup();
  exit (EXIT_FAILURE);
 }


 error = access("test4", R_OK);
 if (!error) {
  fprintf(stderr, "saved gid used instead of real gid\n");
 }
 error = access("test5", R_OK);
 if (error) {
  fprintf(stderr, "Effective gid was used instead of real gid in access().\n");
  errorseen++;
 }
 error = access("test6", R_OK);
 if (!error) {
  fprintf(stderr, "Effective gid was used instead of real gid in access().\n");
  errorseen++;
 }
 fprintf(stderr, "%d errors seen.\n", errorseen);





 error = cleanup();
 if (error) {
  perror("cleanup");
  exit (EXIT_FAILURE);
 }

 exit (EXIT_SUCCESS);
}
