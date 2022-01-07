; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_alloc_mcast_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_alloc_mcast_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VMXNET3_MULTICAST_MAX = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to alloc multicast table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_softc*)* @vmxnet3_alloc_mcast_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_alloc_mcast_table(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %4 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VMXNET3_MULTICAST_MAX, align 4
  %8 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %10, i32 0, i32 0
  %12 = call i32 @iflib_dma_alloc_align(i32 %6, i32 %9, i32 32, %struct.TYPE_2__* %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @iflib_dma_alloc_align(i32, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
