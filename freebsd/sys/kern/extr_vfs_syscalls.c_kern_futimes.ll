; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_futimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_futimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timeval = type { i32 }
%struct.timespec = type { i32 }
%struct.file = type { i32 }

@cap_futimes_rights = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_futimes(%struct.thread* %0, i32 %1, %struct.timeval* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.timespec], align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timeval* %2, %struct.timeval** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @AUDIT_ARG_FD(i32 %13)
  %15 = load %struct.timeval*, %struct.timeval** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %18 = call i32 @getutimes(%struct.timeval* %15, i32 %16, %struct.timespec* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %45

23:                                               ; preds = %4
  %24 = load %struct.thread*, %struct.thread** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @getvnode(%struct.thread* %24, i32 %25, i32* @cap_futimes_rights, %struct.file** %11)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %45

31:                                               ; preds = %23
  %32 = load %struct.thread*, %struct.thread** %6, align 8
  %33 = load %struct.file*, %struct.file** %11, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %37 = load %struct.timeval*, %struct.timeval** %8, align 8
  %38 = icmp eq %struct.timeval* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @setutimes(%struct.thread* %32, i32 %35, %struct.timespec* %36, i32 2, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.file*, %struct.file** %11, align 8
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = call i32 @fdrop(%struct.file* %41, %struct.thread* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %31, %29, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getutimes(%struct.timeval*, i32, %struct.timespec*) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @setutimes(%struct.thread*, i32, %struct.timespec*, i32, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
