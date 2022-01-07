; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_rx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_rx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { %struct.ixl_rx_queue*, %struct.TYPE_2__* }
%struct.ixl_rx_queue = type { %struct.ixl_vsi*, %struct.rx_ring }
%struct.rx_ring = type { i32, %struct.ixl_rx_queue*, i32, %union.i40e_rx_desc*, i32 }
%union.i40e_rx_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@M_IAVF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate RX ring memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32, i32)* @iavf_if_rx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_rx_queues_alloc(i32 %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iavf_sc*, align 8
  %13 = alloca %struct.ixl_vsi*, align 8
  %14 = alloca %struct.ixl_rx_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.rx_ring*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.iavf_sc* @iflib_get_softc(i32 %18)
  store %struct.iavf_sc* %19, %struct.iavf_sc** %12, align 8
  %20 = load %struct.iavf_sc*, %struct.iavf_sc** %12, align 8
  %21 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %20, i32 0, i32 0
  store %struct.ixl_vsi* %21, %struct.ixl_vsi** %13, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 48, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_IAVF, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @malloc(i32 %25, i32 %26, i32 %29)
  %31 = inttoptr i64 %30 to %struct.ixl_rx_queue*
  %32 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %33 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %32, i32 0, i32 0
  store %struct.ixl_rx_queue* %31, %struct.ixl_rx_queue** %33, align 8
  %34 = icmp ne %struct.ixl_rx_queue* %31, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @iflib_get_dev(i32 %36)
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %16, align 4
  br label %91

40:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %41 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %42 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %41, i32 0, i32 0
  %43 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %42, align 8
  store %struct.ixl_rx_queue* %43, %struct.ixl_rx_queue** %14, align 8
  br label %44

44:                                               ; preds = %85, %40
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  %49 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %14, align 8
  %50 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %49, i32 0, i32 1
  store %struct.rx_ring* %50, %struct.rx_ring** %17, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.rx_ring*, %struct.rx_ring** %17, align 8
  %53 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ixl_vsi*, %struct.ixl_vsi** %13, align 8
  %55 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %14, align 8
  %56 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %55, i32 0, i32 0
  store %struct.ixl_vsi* %54, %struct.ixl_vsi** %56, align 8
  %57 = load %struct.rx_ring*, %struct.rx_ring** %17, align 8
  %58 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @I40E_QRX_TAIL1(i32 %59)
  %61 = load %struct.rx_ring*, %struct.rx_ring** %17, align 8
  %62 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %union.i40e_rx_desc*
  %71 = load %struct.rx_ring*, %struct.rx_ring** %17, align 8
  %72 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %71, i32 0, i32 3
  store %union.i40e_rx_desc* %70, %union.i40e_rx_desc** %72, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rx_ring*, %struct.rx_ring** %17, align 8
  %81 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %14, align 8
  %83 = load %struct.rx_ring*, %struct.rx_ring** %17, align 8
  %84 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %83, i32 0, i32 1
  store %struct.ixl_rx_queue* %82, %struct.ixl_rx_queue** %84, align 8
  br label %85

85:                                               ; preds = %48
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  %88 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %14, align 8
  %89 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %88, i32 1
  store %struct.ixl_rx_queue* %89, %struct.ixl_rx_queue** %14, align 8
  br label %44

90:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %95

91:                                               ; preds = %35
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @iavf_if_queues_free(i32 %92)
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %90
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @I40E_QRX_TAIL1(i32) #1

declare dso_local i32 @iavf_if_queues_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
