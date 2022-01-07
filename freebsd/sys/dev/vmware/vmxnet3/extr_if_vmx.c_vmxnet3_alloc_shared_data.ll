; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_alloc_shared_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_alloc_shared_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, %struct.TYPE_2__, %struct.vmxnet3_rss_shared*, i32, %struct.TYPE_2__, %struct.vmxnet3_driver_shared*, i32 }
%struct.vmxnet3_rss_shared = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.vmxnet3_driver_shared = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"cannot alloc shared memory\0A\00", align 1
@VMXNET3_FLAG_RSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot alloc rss shared memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_softc*)* @vmxnet3_alloc_shared_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_alloc_shared_data(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %3, align 8
  %7 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  store i64 4, i64* %5, align 8
  %10 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %14, i32 0, i32 4
  %16 = call i32 @iflib_dma_alloc_align(i32 %12, i64 %13, i32 1, %struct.TYPE_2__* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %1
  %24 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.vmxnet3_driver_shared*
  %29 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %29, i32 0, i32 5
  store %struct.vmxnet3_driver_shared* %28, %struct.vmxnet3_driver_shared** %30, align 8
  %31 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VMXNET3_FLAG_RSS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %23
  store i64 4, i64* %5, align 8
  %38 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %42, i32 0, i32 1
  %44 = call i32 @iflib_dma_alloc_align(i32 %40, i64 %41, i32 128, %struct.TYPE_2__* %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %37
  %52 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %53 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.vmxnet3_rss_shared*
  %57 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %58 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %57, i32 0, i32 2
  store %struct.vmxnet3_rss_shared* %56, %struct.vmxnet3_rss_shared** %58, align 8
  br label %59

59:                                               ; preds = %51, %23
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %47, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @iflib_dma_alloc_align(i32, i64, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
