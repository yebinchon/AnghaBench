; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_suspend_vcpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_suspend_vcpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"suspending all CPUs\0A\00", align 1
@vcpus_active = common dso_local global i32 0, align 4
@vcpus_suspended = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@vcpus_waiting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gdb_suspend_vcpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_suspend_vcpus() #0 {
  %1 = call i32 @pthread_mutex_isowned_np(i32* @gdb_lock)
  %2 = call i32 @assert(i32 %1)
  %3 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @vcpus_active, align 4
  store i32 %4, i32* @vcpus_suspended, align 4
  %5 = load i32, i32* @ctx, align 4
  %6 = call i32 @vm_suspend_cpu(i32 %5, i32 -1)
  %7 = call i64 @CPU_CMP(i32* @vcpus_waiting, i32* @vcpus_suspended)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @gdb_finish_suspend_vcpus()
  br label %11

11:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_isowned_np(i32*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @vm_suspend_cpu(i32, i32) #1

declare dso_local i64 @CPU_CMP(i32*, i32*) #1

declare dso_local i32 @gdb_finish_suspend_vcpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
