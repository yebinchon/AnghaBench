; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.xgbe_prv_data* }
%struct.xgbe_prv_data = type { i32, i32, i32, i32, %struct.xgbe_desc_if }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@.str = private unnamed_addr constant [14 x i8] c"-->xgbe_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"xgbe_alloc_channels failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"desc_if->alloc_ring_resources failed\0A\00", align 1
@xgbe_service = common dso_local global i32 0, align 4
@xgbe_restart = common dso_local global i32 0, align 4
@XGBE_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"<--xgbe_open\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgbe_open(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.xgbe_desc_if*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  store %struct.xgbe_prv_data* %9, %struct.xgbe_prv_data** %4, align 8
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 4
  store %struct.xgbe_desc_if* %11, %struct.xgbe_desc_if** %5, align 8
  %12 = call i32 @DBGPR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %14 = call i32 @xgbe_phy_init(%struct.xgbe_prv_data* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %84

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = call i32 @if_getmtu(%struct.ifnet* %21)
  %23 = call i32 @xgbe_calc_rx_buf_size(%struct.ifnet* %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %82

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %32 = call i32 @xgbe_alloc_channels(%struct.xgbe_prv_data* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %82

37:                                               ; preds = %27
  %38 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %38, i32 0, i32 0
  %40 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %39, align 8
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %42 = bitcast %struct.xgbe_prv_data* %41 to %struct.xgbe_prv_data.0*
  %43 = call i32 %40(%struct.xgbe_prv_data.0* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %79

48:                                               ; preds = %37
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 3
  %51 = load i32, i32* @xgbe_service, align 4
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %53 = call i32 @TASK_INIT(i32* %50, i32 0, i32 %51, %struct.xgbe_prv_data* %52)
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %55 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %54, i32 0, i32 2
  %56 = load i32, i32* @xgbe_restart, align 4
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %58 = call i32 @TASK_INIT(i32* %55, i32 0, i32 %56, %struct.xgbe_prv_data* %57)
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %60 = call i32 @xgbe_init_timers(%struct.xgbe_prv_data* %59)
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %62 = call i32 @xgbe_start(%struct.xgbe_prv_data* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %72

66:                                               ; preds = %48
  %67 = load i32, i32* @XGBE_DOWN, align 4
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 1
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  %71 = call i32 @DBGPR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

72:                                               ; preds = %65
  %73 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %5, align 8
  %74 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %73, i32 0, i32 1
  %75 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %74, align 8
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %77 = bitcast %struct.xgbe_prv_data* %76 to %struct.xgbe_prv_data.1*
  %78 = call i32 %75(%struct.xgbe_prv_data.1* %77)
  br label %79

79:                                               ; preds = %72, %46
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %81 = call i32 @xgbe_free_channels(%struct.xgbe_prv_data* %80)
  br label %82

82:                                               ; preds = %79, %35, %26
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %66, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i32 @xgbe_phy_init(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_calc_rx_buf_size(%struct.ifnet*, i32) #1

declare dso_local i32 @if_getmtu(%struct.ifnet*) #1

declare dso_local i32 @xgbe_alloc_channels(%struct.xgbe_prv_data*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_init_timers(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_start(%struct.xgbe_prv_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @xgbe_free_channels(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
