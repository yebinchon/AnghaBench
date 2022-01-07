; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_timedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ksem_timedwait_args = type { i32, i32* }
%struct.timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ksem_timedwait(%struct.thread* %0, %struct.ksem_timedwait_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ksem_timedwait_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ksem_timedwait_args* %1, %struct.ksem_timedwait_args** %5, align 8
  %9 = load %struct.ksem_timedwait_args*, %struct.ksem_timedwait_args** %5, align 8
  %10 = getelementptr inbounds %struct.ksem_timedwait_args, %struct.ksem_timedwait_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.timespec* null, %struct.timespec** %7, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.ksem_timedwait_args*, %struct.ksem_timedwait_args** %5, align 8
  %16 = getelementptr inbounds %struct.ksem_timedwait_args, %struct.ksem_timedwait_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @copyin(i32* %17, %struct.timespec* %6, i32 4)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 1000000000
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %27
  store %struct.timespec* %6, %struct.timespec** %7, align 8
  br label %34

34:                                               ; preds = %33, %13
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load %struct.ksem_timedwait_args*, %struct.ksem_timedwait_args** %5, align 8
  %37 = getelementptr inbounds %struct.ksem_timedwait_args, %struct.ksem_timedwait_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.timespec*, %struct.timespec** %7, align 8
  %40 = call i32 @kern_sem_wait(%struct.thread* %35, i32 %38, i32 0, %struct.timespec* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %31, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @copyin(i32*, %struct.timespec*, i32) #1

declare dso_local i32 @kern_sem_wait(%struct.thread*, i32, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
