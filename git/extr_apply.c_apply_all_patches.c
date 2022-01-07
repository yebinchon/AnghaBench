
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apply_state {int whitespace_error; int squelch_whitespace_errors; scalar_t__ ws_error_action; int applied_after_fixing_ws; scalar_t__ apply_verbosity; int saved_warn_routine; int saved_error_routine; int lock_file; TYPE_1__* repo; scalar_t__ update_index; scalar_t__ apply; int prefix; } ;
struct TYPE_2__ {int index; } ;


 int COMMIT_LOCK ;
 int O_RDONLY ;
 int Q_ (char*,char*,int) ;
 int _ (char*) ;
 int apply_patch (struct apply_state*,int,char const*,int) ;
 int close (int) ;
 scalar_t__ die_on_ws_error ;
 int errno ;
 int error (int ,...) ;
 int free (char*) ;
 int open (char const*,int ) ;
 char* prefix_filename (int ,char const*) ;
 int rollback_lock_file (int *) ;
 int set_default_whitespace_mode (struct apply_state*) ;
 int set_error_routine (int ) ;
 int set_warn_routine (int ) ;
 int strcmp (char const*,char*) ;
 char* strerror (int ) ;
 scalar_t__ verbosity_silent ;
 int warning (int ,int) ;
 int write_locked_index (int ,int *,int ) ;

int apply_all_patches(struct apply_state *state,
        int argc,
        const char **argv,
        int options)
{
 int i;
 int res;
 int errs = 0;
 int read_stdin = 1;

 for (i = 0; i < argc; i++) {
  const char *arg = argv[i];
  char *to_free = ((void*)0);
  int fd;

  if (!strcmp(arg, "-")) {
   res = apply_patch(state, 0, "<stdin>", options);
   if (res < 0)
    goto end;
   errs |= res;
   read_stdin = 0;
   continue;
  } else
   arg = to_free = prefix_filename(state->prefix, arg);

  fd = open(arg, O_RDONLY);
  if (fd < 0) {
   error(_("can't open patch '%s': %s"), arg, strerror(errno));
   res = -128;
   free(to_free);
   goto end;
  }
  read_stdin = 0;
  set_default_whitespace_mode(state);
  res = apply_patch(state, fd, arg, options);
  close(fd);
  free(to_free);
  if (res < 0)
   goto end;
  errs |= res;
 }
 set_default_whitespace_mode(state);
 if (read_stdin) {
  res = apply_patch(state, 0, "<stdin>", options);
  if (res < 0)
   goto end;
  errs |= res;
 }

 if (state->whitespace_error) {
  if (state->squelch_whitespace_errors &&
      state->squelch_whitespace_errors < state->whitespace_error) {
   int squelched =
    state->whitespace_error - state->squelch_whitespace_errors;
   warning(Q_("squelched %d whitespace error",
       "squelched %d whitespace errors",
       squelched),
    squelched);
  }
  if (state->ws_error_action == die_on_ws_error) {
   error(Q_("%d line adds whitespace errors.",
     "%d lines add whitespace errors.",
     state->whitespace_error),
         state->whitespace_error);
   res = -128;
   goto end;
  }
  if (state->applied_after_fixing_ws && state->apply)
   warning(Q_("%d line applied after"
       " fixing whitespace errors.",
       "%d lines applied after"
       " fixing whitespace errors.",
       state->applied_after_fixing_ws),
    state->applied_after_fixing_ws);
  else if (state->whitespace_error)
   warning(Q_("%d line adds whitespace errors.",
       "%d lines add whitespace errors.",
       state->whitespace_error),
    state->whitespace_error);
 }

 if (state->update_index) {
  res = write_locked_index(state->repo->index, &state->lock_file, COMMIT_LOCK);
  if (res) {
   error(_("Unable to write new index file"));
   res = -128;
   goto end;
  }
 }

 res = !!errs;

end:
 rollback_lock_file(&state->lock_file);

 if (state->apply_verbosity <= verbosity_silent) {
  set_error_routine(state->saved_error_routine);
  set_warn_routine(state->saved_warn_routine);
 }

 if (res > -1)
  return res;
 return (res == -1 ? 1 : 128);
}
