; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_futimens.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_futimens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timespec = type { i32 }
%struct.file = type { i32 }

@UTIMENS_EXIT = common dso_local global i32 0, align 4
@cap_futimes_rights = common dso_local global i32 0, align 4
@UTIMENS_NULL = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_futimens(%struct.thread* %0, i32 %1, %struct.timespec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.timespec], align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @AUDIT_ARG_FD(i32 %14)
  %16 = load %struct.timespec*, %struct.timespec** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %19 = call i32 @getutimens(%struct.timespec* %16, i32 %17, %struct.timespec* %18, i32* %13)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @UTIMENS_EXIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %52

30:                                               ; preds = %24
  %31 = load %struct.thread*, %struct.thread** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @getvnode(%struct.thread* %31, i32 %32, i32* @cap_futimes_rights, %struct.file** %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %52

38:                                               ; preds = %30
  %39 = load %struct.thread*, %struct.thread** %6, align 8
  %40 = load %struct.file*, %struct.file** %11, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @UTIMENS_NULL, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @setutimes(%struct.thread* %39, i32 %42, %struct.timespec* %43, i32 2, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.file*, %struct.file** %11, align 8
  %49 = load %struct.thread*, %struct.thread** %6, align 8
  %50 = call i32 @fdrop(%struct.file* %48, %struct.thread* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %38, %36, %29, %22
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getutimens(%struct.timespec*, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @setutimes(%struct.thread*, i32, %struct.timespec*, i32, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
