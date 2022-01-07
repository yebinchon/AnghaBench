; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_rx_ctl_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_rx_ctl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_soft_command = type { i64 }
%struct.lio_rx_ctl_context = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"rx ctl instruction failed. Status: %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64, i8*)* @lio_rx_ctl_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_rx_ctl_callback(%struct.octeon_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lio_soft_command*, align 8
  %8 = alloca %struct.lio_rx_ctl_context*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.lio_soft_command*
  store %struct.lio_soft_command* %10, %struct.lio_soft_command** %7, align 8
  %11 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %12 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.lio_rx_ctl_context*
  store %struct.lio_rx_ctl_context* %14, %struct.lio_rx_ctl_context** %8, align 8
  %15 = load %struct.lio_rx_ctl_context*, %struct.lio_rx_ctl_context** %8, align 8
  %16 = getelementptr inbounds %struct.lio_rx_ctl_context, %struct.lio_rx_ctl_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.octeon_device* @lio_get_device(i32 %17)
  store %struct.octeon_device* %18, %struct.octeon_device** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @LIO_CAST64(i64 %23)
  %25 = call i32 @lio_dev_err(%struct.octeon_device* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.lio_rx_ctl_context*, %struct.lio_rx_ctl_context** %8, align 8
  %28 = getelementptr inbounds %struct.lio_rx_ctl_context, %struct.lio_rx_ctl_context* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = call i32 (...) @wmb()
  ret void
}

declare dso_local %struct.octeon_device* @lio_get_device(i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @LIO_CAST64(i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
