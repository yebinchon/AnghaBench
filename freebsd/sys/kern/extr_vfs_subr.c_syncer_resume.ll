; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_syncer_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_syncer_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sync_mtx = common dso_local global i32 0, align 4
@first_printf = common dso_local global i32 0, align 4
@SYNCER_RUNNING = common dso_local global i32 0, align 4
@syncer_state = common dso_local global i32 0, align 4
@sync_wakeup = common dso_local global i32 0, align 4
@updateproc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syncer_resume() #0 {
  %1 = call i32 @mtx_lock(i32* @sync_mtx)
  store i32 1, i32* @first_printf, align 4
  %2 = load i32, i32* @SYNCER_RUNNING, align 4
  store i32 %2, i32* @syncer_state, align 4
  %3 = call i32 @mtx_unlock(i32* @sync_mtx)
  %4 = call i32 @cv_broadcast(i32* @sync_wakeup)
  %5 = load i32, i32* @updateproc, align 4
  %6 = call i32 @kproc_resume(i32 %5)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @kproc_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
