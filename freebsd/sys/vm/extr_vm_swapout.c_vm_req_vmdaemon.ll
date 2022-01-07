; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_swapout.c_vm_req_vmdaemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_swapout.c_vm_req_vmdaemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_req_vmdaemon.lastrun = internal global i32 0, align 4
@vm_daemon_mtx = common dso_local global i32 0, align 4
@vm_pageout_req_swapout = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@vm_daemon_needed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vm_req_vmdaemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_req_vmdaemon(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @mtx_lock(i32* @vm_daemon_mtx)
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @vm_pageout_req_swapout, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* @vm_pageout_req_swapout, align 4
  %7 = load i32, i32* @ticks, align 4
  %8 = load i32, i32* @vm_req_vmdaemon.lastrun, align 4
  %9 = load i32, i32* @hz, align 4
  %10 = add nsw i32 %8, %9
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ticks, align 4
  %14 = load i32, i32* @vm_req_vmdaemon.lastrun, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  %17 = call i32 @wakeup(i32* @vm_daemon_needed)
  %18 = load i32, i32* @ticks, align 4
  store i32 %18, i32* @vm_req_vmdaemon.lastrun, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = call i32 @mtx_unlock(i32* @vm_daemon_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
