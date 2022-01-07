; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_syscall_thread_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_syscall_thread_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i32 }

@SY_THR_STATIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"drain on static syscall\00", align 1
@SY_THR_DRAINING = common dso_local global i32 0, align 4
@SY_THR_ABSENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"scdrn\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysent*)* @syscall_thread_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscall_thread_drain(%struct.sysent* %0) #0 {
  %2 = alloca %struct.sysent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sysent* %0, %struct.sysent** %2, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.sysent*, %struct.sysent** %2, align 8
  %7 = getelementptr inbounds %struct.sysent, %struct.sysent* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SY_THR_STATIC, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SY_THR_DRAINING, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %5
  %19 = load %struct.sysent*, %struct.sysent** %2, align 8
  %20 = getelementptr inbounds %struct.sysent, %struct.sysent* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @atomic_cmpset_acq_32(i32* %20, i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %5, label %25

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %33, %25
  %27 = load %struct.sysent*, %struct.sysent** %2, align 8
  %28 = getelementptr inbounds %struct.sysent, %struct.sysent* %27, i32 0, i32 0
  %29 = load i32, i32* @SY_THR_DRAINING, align 4
  %30 = load i32, i32* @SY_THR_ABSENT, align 4
  %31 = call i64 @atomic_cmpset_32(i32* %28, i32 %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @hz, align 4
  %35 = sdiv i32 %34, 2
  %36 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %26

37:                                               ; preds = %26
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_cmpset_acq_32(i32*, i32, i32) #1

declare dso_local i64 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
