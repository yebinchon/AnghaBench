
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct uinput_cdev_state {int ucs_lock; TYPE_1__ ucs_selp; int ucs_evdev; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int M_EVDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int devfs_set_cdevpriv (struct uinput_cdev_state*,int ) ;
 int evdev_alloc () ;
 int knlist_init (int *,int *,int ,int ,int ,int ) ;
 struct uinput_cdev_state* malloc (int,int ,int) ;
 int sx_init (int *,char*) ;
 int uinput_dtor ;
 int uinput_knl_assert_locked ;
 int uinput_knl_assert_unlocked ;
 int uinput_knllock ;
 int uinput_knlunlock ;

__attribute__((used)) static int
uinput_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct uinput_cdev_state *state;

 state = malloc(sizeof(struct uinput_cdev_state), M_EVDEV,
     M_WAITOK | M_ZERO);
 state->ucs_evdev = evdev_alloc();

 sx_init(&state->ucs_lock, "uinput");
 knlist_init(&state->ucs_selp.si_note, &state->ucs_lock, uinput_knllock,
     uinput_knlunlock, uinput_knl_assert_locked,
     uinput_knl_assert_unlocked);

 devfs_set_cdevpriv(state, uinput_dtor);
 return (0);
}
