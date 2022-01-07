; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_linux.c_mfi_linux_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_linux.c_mfi_linux_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32, i64, i32 }
%struct.file = type { i32 }

@MFI_LINUX_CMD_2 = common dso_local global i32 0, align 4
@MFI_LINUX_SET_AEN_2 = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @mfi_linux_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_linux_ioctl(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  %10 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %18 [
    i32 129, label %14
    i32 128, label %16
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @MFI_LINUX_CMD_2, align 4
  store i32 %15, i32* %9, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MFI_LINUX_SET_AEN_2, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %2, %16, %14
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAP_IOCTL, align 4
  %24 = call i32 @cap_rights_init(i32* %6, i32 %23)
  %25 = call i32 @fget(%struct.thread* %19, i32 %22, i32 %24, %struct.file** %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %18
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = call i32 @fo_ioctl(%struct.file* %31, i32 %32, i32 %36, i32 %39, %struct.thread* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = call i32 @fdrop(%struct.file* %42, %struct.thread* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %30, %28
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
