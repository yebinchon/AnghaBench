; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_linkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_linkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linkat_args = type { i32, i32, i32, i32, i32 }

@AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_linkat(%struct.thread* %0, %struct.linkat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linkat_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linkat_args* %1, %struct.linkat_args** %5, align 8
  %7 = load %struct.linkat_args*, %struct.linkat_args** %5, align 8
  %8 = getelementptr inbounds %struct.linkat_args, %struct.linkat_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  %12 = load i32, i32* @AT_BENEATH, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = load %struct.linkat_args*, %struct.linkat_args** %5, align 8
  %22 = getelementptr inbounds %struct.linkat_args, %struct.linkat_args* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.linkat_args*, %struct.linkat_args** %5, align 8
  %25 = getelementptr inbounds %struct.linkat_args, %struct.linkat_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.linkat_args*, %struct.linkat_args** %5, align 8
  %28 = getelementptr inbounds %struct.linkat_args, %struct.linkat_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.linkat_args*, %struct.linkat_args** %5, align 8
  %31 = getelementptr inbounds %struct.linkat_args, %struct.linkat_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UIO_USERSPACE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load i32, i32* @FOLLOW, align 4
  br label %42

40:                                               ; preds = %19
  %41 = load i32, i32* @NOFOLLOW, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @AT_BENEATH, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @BENEATH, align 4
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %43, %52
  %54 = call i32 @kern_linkat(%struct.thread* %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %33, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @kern_linkat(%struct.thread*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
