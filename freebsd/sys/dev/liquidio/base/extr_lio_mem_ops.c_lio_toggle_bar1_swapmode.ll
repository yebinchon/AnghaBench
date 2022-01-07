; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_mem_ops.c_lio_toggle_bar1_swapmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_mem_ops.c_lio_toggle_bar1_swapmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.1*, i32, i32)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32)* @lio_toggle_bar1_swapmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_toggle_bar1_swapmode(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %8, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = bitcast %struct.octeon_device* %10 to %struct.octeon_device.0*
  %12 = load i32, i32* %4, align 4
  %13 = call i32 %9(%struct.octeon_device.0* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -3
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 2
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  store i32 %24, i32* %5, align 4
  %25 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.octeon_device.1*, i32, i32)*, i32 (%struct.octeon_device.1*, i32, i32)** %27, align 8
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = bitcast %struct.octeon_device* %29 to %struct.octeon_device.1*
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 %28(%struct.octeon_device.1* %30, i32 %31, i32 %32)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
