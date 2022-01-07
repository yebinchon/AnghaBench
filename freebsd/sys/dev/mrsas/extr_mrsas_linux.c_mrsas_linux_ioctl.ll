; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_linux.c_mrsas_linux_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_linux.c_mrsas_linux_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i64, i64, i32 }
%struct.file = type { i32 }

@MRSAS_LINUX_CMD32 = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @mrsas_linux_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_linux_ioctl(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_ioctl_args*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %4, align 8
  %8 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %9 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @MRSAS_LINUX_CMD32, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOTSUP, align 4
  store i32 %15, i32* %6, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %19 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = ptrtoint %struct.file** %5 to i32
  %22 = call i32 (%struct.thread*, i32, i32, ...) @fget(%struct.thread* %17, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %41

26:                                               ; preds = %16
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %4, align 8
  %30 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.thread*, %struct.thread** %3, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = call i32 @fo_ioctl(%struct.file* %27, i64 %28, i32 %32, i32 %35, %struct.thread* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = call i32 @fdrop(%struct.file* %38, %struct.thread* %39)
  br label %41

41:                                               ; preds = %26, %25, %14
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @fget(%struct.thread*, i32, i32, ...) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i64, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
