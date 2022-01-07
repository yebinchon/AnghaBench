; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_speedup_syncer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_speedup_syncer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sync_mtx = common dso_local global i32 0, align 4
@rushjob = common dso_local global i32 0, align 4
@syncdelay = common dso_local global i32 0, align 4
@stat_rush_requests = common dso_local global i32 0, align 4
@sync_wakeup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speedup_syncer() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @mtx_lock(i32* @sync_mtx)
  %3 = load i32, i32* @rushjob, align 4
  %4 = load i32, i32* @syncdelay, align 4
  %5 = sdiv i32 %4, 2
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @rushjob, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @rushjob, align 4
  %10 = load i32, i32* @stat_rush_requests, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @stat_rush_requests, align 4
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %7, %0
  %13 = call i32 @mtx_unlock(i32* @sync_mtx)
  %14 = call i32 @cv_broadcast(i32* @sync_wakeup)
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
