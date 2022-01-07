; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_mtu_ctl_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_mtu_ctl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_soft_command = type { i32* }

@.str = private unnamed_addr constant [51 x i8] c"MTU updation ctl instruction failed. Status: %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64, i8*)* @lio_mtu_ctl_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_mtu_ctl_callback(%struct.octeon_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lio_soft_command*, align 8
  %8 = alloca i32*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.lio_soft_command*
  store %struct.lio_soft_command* %10, %struct.lio_soft_command** %7, align 8
  %11 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %12 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @LIO_CAST64(i64 %18)
  %20 = call i32 @lio_dev_err(%struct.octeon_device* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %8, align 8
  store volatile i32 -1, i32* %21, align 4
  %22 = call i32 (...) @wmb()
  br label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  store volatile i32 1, i32* %24, align 4
  %25 = call i32 (...) @wmb()
  br label %26

26:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @LIO_CAST64(i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
