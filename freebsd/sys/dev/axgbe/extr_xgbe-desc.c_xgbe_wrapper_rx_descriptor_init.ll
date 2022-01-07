; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_wrapper_rx_descriptor_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_wrapper_rx_descriptor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_channel*, %struct.xgbe_hw_if }
%struct.xgbe_channel = type { %struct.xgbe_ring* }
%struct.xgbe_ring = type { i32, i32, i64, i64, %struct.xgbe_ring_desc* }
%struct.xgbe_ring_desc = type { i32 }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_channel.0*)* }
%struct.xgbe_channel.0 = type opaque
%struct.xgbe_ring_data = type { i32, %struct.xgbe_ring_desc* }

@.str = private unnamed_addr constant [36 x i8] c"-->xgbe_wrapper_rx_descriptor_init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_wrapper_rx_descriptor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_wrapper_rx_descriptor_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_hw_if*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca %struct.xgbe_ring*, align 8
  %6 = alloca %struct.xgbe_ring_desc*, align 8
  %7 = alloca %struct.xgbe_ring_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 2
  store %struct.xgbe_hw_if* %12, %struct.xgbe_hw_if** %3, align 8
  %13 = call i32 @DBGPR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 1
  %16 = load %struct.xgbe_channel*, %struct.xgbe_channel** %15, align 8
  store %struct.xgbe_channel* %16, %struct.xgbe_channel** %4, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %80, %1
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %17
  %24 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %25 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %24, i32 0, i32 0
  %26 = load %struct.xgbe_ring*, %struct.xgbe_ring** %25, align 8
  store %struct.xgbe_ring* %26, %struct.xgbe_ring** %5, align 8
  %27 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %28 = icmp ne %struct.xgbe_ring* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %85

30:                                               ; preds = %23
  %31 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %32 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %31, i32 0, i32 4
  %33 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %32, align 8
  store %struct.xgbe_ring_desc* %33, %struct.xgbe_ring_desc** %6, align 8
  %34 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %35 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %66, %30
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %40 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %44, i32 %45)
  store %struct.xgbe_ring_data* %46, %struct.xgbe_ring_data** %7, align 8
  %47 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %48 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %49 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %48, i32 0, i32 1
  store %struct.xgbe_ring_desc* %47, %struct.xgbe_ring_desc** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %52 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %54 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %55 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %56 = call i64 @xgbe_map_rx_buffer(%struct.xgbe_prv_data* %53, %struct.xgbe_ring* %54, %struct.xgbe_ring_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %69

59:                                               ; preds = %43
  %60 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %61 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %60, i32 1
  store %struct.xgbe_ring_desc* %61, %struct.xgbe_ring_desc** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %37

69:                                               ; preds = %58, %37
  %70 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %71 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %73 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %3, align 8
  %75 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %74, i32 0, i32 0
  %76 = load i32 (%struct.xgbe_channel.0*)*, i32 (%struct.xgbe_channel.0*)** %75, align 8
  %77 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %78 = bitcast %struct.xgbe_channel* %77 to %struct.xgbe_channel.0*
  %79 = call i32 %76(%struct.xgbe_channel.0* %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %84 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %83, i32 1
  store %struct.xgbe_channel* %84, %struct.xgbe_channel** %4, align 8
  br label %17

85:                                               ; preds = %29, %17
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i64 @xgbe_map_rx_buffer(%struct.xgbe_prv_data*, %struct.xgbe_ring*, %struct.xgbe_ring_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
