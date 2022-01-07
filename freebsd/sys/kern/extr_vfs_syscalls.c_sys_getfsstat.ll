; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_getfsstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_getfsstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.getfsstat_args = type { i64, i32, i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getfsstat(%struct.thread* %0, %struct.getfsstat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.getfsstat_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.getfsstat_args* %1, %struct.getfsstat_args** %5, align 8
  %8 = load %struct.getfsstat_args*, %struct.getfsstat_args** %5, align 8
  %9 = getelementptr inbounds %struct.getfsstat_args, %struct.getfsstat_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.getfsstat_args*, %struct.getfsstat_args** %5, align 8
  %14 = getelementptr inbounds %struct.getfsstat_args, %struct.getfsstat_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SIZE_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = load %struct.getfsstat_args*, %struct.getfsstat_args** %5, align 8
  %23 = getelementptr inbounds %struct.getfsstat_args, %struct.getfsstat_args* %22, i32 0, i32 2
  %24 = load %struct.getfsstat_args*, %struct.getfsstat_args** %5, align 8
  %25 = getelementptr inbounds %struct.getfsstat_args, %struct.getfsstat_args* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @UIO_USERSPACE, align 4
  %28 = load %struct.getfsstat_args*, %struct.getfsstat_args** %5, align 8
  %29 = getelementptr inbounds %struct.getfsstat_args, %struct.getfsstat_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kern_getfsstat(%struct.thread* %21, i32* %23, i64 %26, i64* %6, i32 %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %20
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @kern_getfsstat(%struct.thread*, i32*, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
