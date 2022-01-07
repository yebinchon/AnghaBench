; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_linux.c_linux_ioctl_tdfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_linux.c_linux_ioctl_tdfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32, i64, i32 }
%struct.file = type { i32 }

@CAP_IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @linux_ioctl_tdfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_ioctl_tdfx(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.file*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 65535
  store i32 %14, i32* %8, align 4
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAP_IOCTL, align 4
  %20 = call i32 @cap_rights_init(i32* %6, i32 %19)
  %21 = call i32 @fget(%struct.thread* %15, i32 %18, i32 %20, %struct.file** %10)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %28 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = bitcast [16 x i8]* %9 to i8**
  %32 = call i32 @copyin(i32 %30, i8** %31, i32 16)
  %33 = load %struct.file*, %struct.file** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = ptrtoint [16 x i8]* %9 to i32
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = call i32 @fo_ioctl(%struct.file* %33, i32 %34, i32 %35, i32 %38, %struct.thread* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.file*, %struct.file** %10, align 8
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = call i32 @fdrop(%struct.file* %41, %struct.thread* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %26, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @copyin(i32, i8**, i32) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
