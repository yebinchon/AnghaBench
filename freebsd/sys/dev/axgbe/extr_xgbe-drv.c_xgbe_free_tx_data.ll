; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_free_tx_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_free_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_channel*, %struct.xgbe_desc_if }
%struct.xgbe_channel = type { %struct.xgbe_ring* }
%struct.xgbe_ring = type { i32 }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_ring_data = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"-->xgbe_free_tx_data\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"<--xgbe_free_tx_data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_free_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_free_tx_data(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_desc_if*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca %struct.xgbe_ring*, align 8
  %6 = alloca %struct.xgbe_ring_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 2
  store %struct.xgbe_desc_if* %10, %struct.xgbe_desc_if** %3, align 8
  %11 = call i32 @DBGPR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 1
  %14 = load %struct.xgbe_channel*, %struct.xgbe_channel** %13, align 8
  store %struct.xgbe_channel* %14, %struct.xgbe_channel** %4, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %50, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %23 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %22, i32 0, i32 0
  %24 = load %struct.xgbe_ring*, %struct.xgbe_ring** %23, align 8
  store %struct.xgbe_ring* %24, %struct.xgbe_ring** %5, align 8
  %25 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %26 = icmp ne %struct.xgbe_ring* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %55

28:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %32 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %36, i32 %37)
  store %struct.xgbe_ring_data* %38, %struct.xgbe_ring_data** %6, align 8
  %39 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %3, align 8
  %40 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %39, i32 0, i32 0
  %41 = load i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)*, i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)** %40, align 8
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %43 = bitcast %struct.xgbe_prv_data* %42 to %struct.xgbe_prv_data.0*
  %44 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %6, align 8
  %45 = call i32 %41(%struct.xgbe_prv_data.0* %43, %struct.xgbe_ring_data* %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %29

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %54 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %53, i32 1
  store %struct.xgbe_channel* %54, %struct.xgbe_channel** %4, align 8
  br label %15

55:                                               ; preds = %27, %15
  %56 = call i32 @DBGPR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
