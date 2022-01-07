
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int period; int duty; int enable; } ;
typedef int cap_rights_t ;


 int CAP_IOCTL ;
 int O_RDWR ;
 unsigned long const PWMGETSTATE ;
 unsigned long const PWMSETSTATE ;
 int PWM_DISABLE ;
 int PWM_DUTY ;
 int PWM_ENABLE ;
 int PWM_PERIOD ;
 int PWM_SHOW_CONFIG ;
 int cap_rights_init (int *,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_ioctls_limit (int,unsigned long const*,int ) ;
 scalar_t__ caph_limit_stdio () ;
 scalar_t__ caph_rights_limit (int,int *) ;
 int close (int) ;
 char* device_name ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int ioctl (int,unsigned long const,struct pwm_state*) ;
 int nitems (unsigned long const*) ;
 int open (char*,int ) ;
 int optarg ;
 int printf (char*,int,int,int) ;
 int set_device_name (int ) ;
 int stderr ;
 char* strerror (int ) ;
 int strtol (int ,char**,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct pwm_state state;
 int fd;
 int period, duty;
 int action, ch;
 cap_rights_t right_ioctl;
 const unsigned long pwm_ioctls[] = {PWMGETSTATE, PWMSETSTATE};
 char *percent;
 bool setname;

 action = 0;
 setname = 0;
 fd = -1;
 period = duty = -1;

 while ((ch = getopt(argc, argv, "f:EDCp:d:")) != -1) {
  switch (ch) {
  case 'E':
   if (action & (PWM_DISABLE | PWM_SHOW_CONFIG))
    usage();
   action |= PWM_ENABLE;
   break;
  case 'D':
   if (action & (PWM_ENABLE | PWM_SHOW_CONFIG))
    usage();
   action |= PWM_DISABLE;
   break;
  case 'C':
   if (action)
    usage();
   action = PWM_SHOW_CONFIG;
   break;
  case 'p':
   if (action & PWM_SHOW_CONFIG)
    usage();
   action |= PWM_PERIOD;
   period = strtol(optarg, ((void*)0), 10);
   break;
  case 'd':
   if (action & PWM_SHOW_CONFIG)
    usage();
   action |= PWM_DUTY;
   duty = strtol(optarg, &percent, 10);
   if (*percent == '%') {
    if (duty < 0 || duty > 100) {
     fprintf(stderr,
         "Invalid duty percentage\n");
     usage();
    }
   } else if (*percent != '\0')
    usage();
   break;
  case 'f':
   setname = 1;
   set_device_name(optarg);
   break;
  case '?':
   usage();
   break;
  }
 }

 if (action == 0)
  usage();

 if ((fd = open(device_name, O_RDWR)) == -1) {
  fprintf(stderr, "pwm: cannot open %s: %s\n",
      device_name, strerror(errno));
  if (setname)
   exit(1);
  else
   usage();
 }

 if (caph_limit_stdio() < 0) {
  fprintf(stderr, "can't limit stdio rights");
  goto fail;
 }
 caph_cache_catpages();
 cap_rights_init(&right_ioctl, CAP_IOCTL);
 if (caph_rights_limit(fd, &right_ioctl) < 0) {
  fprintf(stderr, "cap_right_limit() failed\n");
  goto fail;
 }
 if (caph_ioctls_limit(fd, pwm_ioctls, nitems(pwm_ioctls)) < 0) {
  fprintf(stderr, "caph_ioctls_limit() failed\n");
  goto fail;
 }
 if (caph_enter() < 0) {
  fprintf(stderr, "failed to enter capability mode\n");
  goto fail;
 }


 if (ioctl(fd, PWMGETSTATE, &state) == -1) {
  fprintf(stderr, "Cannot get current state of the pwm controller\n");
  goto fail;
 }

 if (action == PWM_SHOW_CONFIG) {
  printf("period: %u\nduty: %u\nenabled:%d\n",
      state.period,
      state.duty,
      state.enable);
  goto fail;
 } else {
  if (action & PWM_ENABLE)
   state.enable = 1;
  if (action & PWM_DISABLE)
   state.enable = 0;
  if (action & PWM_PERIOD)
   state.period = period;
  if (action & PWM_DUTY) {
   if (*percent != '\0')
    state.duty = state.period * duty / 100;
   else
    state.duty = duty;
  }

  if (ioctl(fd, PWMSETSTATE, &state) == -1) {
   fprintf(stderr,
     "Cannot configure the pwm controller\n");
   goto fail;
  }
 }

 close(fd);
 return (0);

fail:
 close(fd);
 return (1);
}
