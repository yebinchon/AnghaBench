; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c__syscall_thread_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c__syscall_thread_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sysent = type { i32 }

@SY_THR_DRAINING = common dso_local global i32 0, align 4
@SY_THR_ABSENT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SY_THR_INCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_syscall_thread_enter(%struct.thread* %0, %struct.sysent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sysent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sysent* %1, %struct.sysent** %5, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load %struct.sysent*, %struct.sysent** %5, align 8
  %10 = getelementptr inbounds %struct.sysent, %struct.sysent* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SY_THR_DRAINING, align 4
  %14 = load i32, i32* @SY_THR_ABSENT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i32, i32* @ENOSYS, align 4
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SY_THR_INCR, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20
  %25 = load %struct.sysent*, %struct.sysent** %5, align 8
  %26 = getelementptr inbounds %struct.sysent, %struct.sysent* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @atomic_cmpset_acq_32(i32* %26, i32 %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %8, label %31

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @atomic_cmpset_acq_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
