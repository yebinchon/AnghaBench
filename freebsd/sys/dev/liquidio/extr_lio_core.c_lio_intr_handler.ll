; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.1*)*, i32 (%struct.octeon_device.2*, i32)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque

@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@LIO_DEV_IN_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lio_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_intr_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.octeon_device*
  store %struct.octeon_device* %5, %struct.octeon_device** %3, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32 (%struct.octeon_device.2*, i32)*, i32 (%struct.octeon_device.2*, i32)** %8, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = bitcast %struct.octeon_device* %10 to %struct.octeon_device.2*
  %12 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %13 = call i32 %9(%struct.octeon_device.2* %11, i32 %12)
  %14 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.octeon_device.1*)*, i32 (%struct.octeon_device.1*)** %16, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %19 = bitcast %struct.octeon_device* %18 to %struct.octeon_device.1*
  %20 = call i32 %17(%struct.octeon_device.1* %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %22 = call i32 @lio_schedule_droq_pkt_handlers(%struct.octeon_device* %21)
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 1
  %25 = call i64 @atomic_load_acq_int(i32* %24)
  %26 = load i64, i64* @LIO_DEV_IN_RESET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %1
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %31, align 8
  %33 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %34 = bitcast %struct.octeon_device* %33 to %struct.octeon_device.0*
  %35 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %36 = call i32 %32(%struct.octeon_device.0* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @lio_schedule_droq_pkt_handlers(%struct.octeon_device*) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
