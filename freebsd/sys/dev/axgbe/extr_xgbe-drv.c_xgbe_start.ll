; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_phy_if, %struct.xgbe_hw_if }
%struct.xgbe_phy_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.4*)*, i32 (%struct.xgbe_prv_data.5*)* }
%struct.xgbe_prv_data.2 = type opaque
%struct.xgbe_prv_data.3 = type opaque
%struct.xgbe_prv_data.4 = type opaque
%struct.xgbe_prv_data.5 = type opaque

@.str = private unnamed_addr constant [15 x i8] c"-->xgbe_start\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<--xgbe_start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_start(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_hw_if*, align 8
  %5 = alloca %struct.xgbe_phy_if*, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 3
  store %struct.xgbe_hw_if* %8, %struct.xgbe_hw_if** %4, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 2
  store %struct.xgbe_phy_if* %10, %struct.xgbe_phy_if** %5, align 8
  %11 = call i32 @DBGPR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %13 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %12, i32 0, i32 3
  %14 = load i32 (%struct.xgbe_prv_data.5*)*, i32 (%struct.xgbe_prv_data.5*)** %13, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %16 = bitcast %struct.xgbe_prv_data* %15 to %struct.xgbe_prv_data.5*
  %17 = call i32 %14(%struct.xgbe_prv_data.5* %16)
  %18 = load %struct.xgbe_phy_if*, %struct.xgbe_phy_if** %5, align 8
  %19 = getelementptr inbounds %struct.xgbe_phy_if, %struct.xgbe_phy_if* %18, i32 0, i32 0
  %20 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %19, align 8
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = bitcast %struct.xgbe_prv_data* %21 to %struct.xgbe_prv_data.0*
  %23 = call i32 %20(%struct.xgbe_prv_data.0* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %64

27:                                               ; preds = %1
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %29 = call i32 @xgbe_request_irqs(%struct.xgbe_prv_data* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %57

33:                                               ; preds = %27
  %34 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %35 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %34, i32 0, i32 2
  %36 = load i32 (%struct.xgbe_prv_data.4*)*, i32 (%struct.xgbe_prv_data.4*)** %35, align 8
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %38 = bitcast %struct.xgbe_prv_data* %37 to %struct.xgbe_prv_data.4*
  %39 = call i32 %36(%struct.xgbe_prv_data.4* %38)
  %40 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %41 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %40, i32 0, i32 1
  %42 = load i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.3*)** %41, align 8
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = bitcast %struct.xgbe_prv_data* %43 to %struct.xgbe_prv_data.3*
  %45 = call i32 %42(%struct.xgbe_prv_data.3* %44)
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %47 = call i32 @xgbe_enable_rx_tx_ints(%struct.xgbe_prv_data* %46)
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %49 = call i32 @xgbe_start_timers(%struct.xgbe_prv_data* %48)
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %53, i32 0, i32 0
  %55 = call i32 @taskqueue_enqueue(i32 %52, i32* %54)
  %56 = call i32 @DBGPR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

57:                                               ; preds = %32
  %58 = load %struct.xgbe_phy_if*, %struct.xgbe_phy_if** %5, align 8
  %59 = getelementptr inbounds %struct.xgbe_phy_if, %struct.xgbe_phy_if* %58, i32 0, i32 1
  %60 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %59, align 8
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %62 = bitcast %struct.xgbe_prv_data* %61 to %struct.xgbe_prv_data.1*
  %63 = call i32 %60(%struct.xgbe_prv_data.1* %62)
  br label %64

64:                                               ; preds = %57, %26
  %65 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %66 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %65, i32 0, i32 0
  %67 = load i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.2*)** %66, align 8
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %69 = bitcast %struct.xgbe_prv_data* %68 to %struct.xgbe_prv_data.2*
  %70 = call i32 %67(%struct.xgbe_prv_data.2* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %64, %33
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i32 @xgbe_request_irqs(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_rx_tx_ints(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_start_timers(%struct.xgbe_prv_data*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
