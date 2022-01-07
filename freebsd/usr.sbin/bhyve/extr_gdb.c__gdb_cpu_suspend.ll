; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c__gdb_cpu_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c__gdb_cpu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"$vCPU %d suspending\0A\00", align 1
@vcpus_waiting = common dso_local global i32 0, align 4
@vcpus_suspended = common dso_local global i32 0, align 4
@stepping_vcpu = common dso_local global i32 0, align 4
@idle_vcpus = common dso_local global i32 0, align 4
@gdb_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"$vCPU %d resuming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @_gdb_cpu_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gdb_cpu_suspend(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @CPU_SET(i32 %7, i32* @vcpus_waiting)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = call i64 @CPU_CMP(i32* @vcpus_waiting, i32* @vcpus_suspended)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @gdb_finish_suspend_vcpus()
  br label %16

16:                                               ; preds = %14, %11, %2
  br label %17

17:                                               ; preds = %27, %16
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @CPU_ISSET(i32 %18, i32* @vcpus_suspended)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @stepping_vcpu, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = call i32 @pthread_cond_wait(i32* @idle_vcpus, i32* @gdb_lock)
  br label %17

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CPU_CLR(i32 %30, i32* @vcpus_waiting)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @CPU_CMP(i32*, i32*) #1

declare dso_local i32 @gdb_finish_suspend_vcpus(...) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
