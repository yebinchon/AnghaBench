; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_tx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_state_params = type { %struct.TYPE_2__, %struct.ecore_func_sp_obj* }
%struct.TYPE_2__ = type { %struct.ecore_func_tx_start_params }
%struct.ecore_func_tx_start_params = type { i32*, i32*, i32, i32, i32 }
%struct.ecore_func_sp_obj = type { i32, i64 }
%struct.flow_control_configuration = type { i32*, i32*, i32, i32, i32 }

@MAX_TRAFFIC_TYPES = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_COMMON_START_TRAFFIC = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_state_params*)* @ecore_func_send_tx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_send_tx_start(%struct.bxe_softc* %0, %struct.ecore_func_state_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_func_state_params*, align 8
  %5 = alloca %struct.ecore_func_sp_obj*, align 8
  %6 = alloca %struct.flow_control_configuration*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_func_tx_start_params*, align 8
  %9 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_func_state_params* %1, %struct.ecore_func_state_params** %4, align 8
  %10 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %10, i32 0, i32 1
  %12 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %11, align 8
  store %struct.ecore_func_sp_obj* %12, %struct.ecore_func_sp_obj** %5, align 8
  %13 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.flow_control_configuration*
  store %struct.flow_control_configuration* %16, %struct.flow_control_configuration** %6, align 8
  %17 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %21 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ecore_func_tx_start_params* %22, %struct.ecore_func_tx_start_params** %8, align 8
  %23 = load %struct.flow_control_configuration*, %struct.flow_control_configuration** %6, align 8
  %24 = call i32 @ECORE_MEMSET(%struct.flow_control_configuration* %23, i32 0, i32 32)
  %25 = load %struct.ecore_func_tx_start_params*, %struct.ecore_func_tx_start_params** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_func_tx_start_params, %struct.ecore_func_tx_start_params* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.flow_control_configuration*, %struct.flow_control_configuration** %6, align 8
  %29 = getelementptr inbounds %struct.flow_control_configuration, %struct.flow_control_configuration* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ecore_func_tx_start_params*, %struct.ecore_func_tx_start_params** %8, align 8
  %31 = getelementptr inbounds %struct.ecore_func_tx_start_params, %struct.ecore_func_tx_start_params* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.flow_control_configuration*, %struct.flow_control_configuration** %6, align 8
  %34 = getelementptr inbounds %struct.flow_control_configuration, %struct.flow_control_configuration* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ecore_func_tx_start_params*, %struct.ecore_func_tx_start_params** %8, align 8
  %36 = getelementptr inbounds %struct.ecore_func_tx_start_params, %struct.ecore_func_tx_start_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.flow_control_configuration*, %struct.flow_control_configuration** %6, align 8
  %39 = getelementptr inbounds %struct.flow_control_configuration, %struct.flow_control_configuration* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %61, %2
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.flow_control_configuration*, %struct.flow_control_configuration** %6, align 8
  %43 = getelementptr inbounds %struct.flow_control_configuration, %struct.flow_control_configuration* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load %struct.ecore_func_tx_start_params*, %struct.ecore_func_tx_start_params** %8, align 8
  %49 = getelementptr inbounds %struct.ecore_func_tx_start_params, %struct.ecore_func_tx_start_params* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.flow_control_configuration*, %struct.flow_control_configuration** %6, align 8
  %56 = getelementptr inbounds %struct.flow_control_configuration, %struct.flow_control_configuration* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %40

64:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MAX_TRAFFIC_TYPES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.ecore_func_tx_start_params*, %struct.ecore_func_tx_start_params** %8, align 8
  %71 = getelementptr inbounds %struct.ecore_func_tx_start_params, %struct.ecore_func_tx_start_params* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.flow_control_configuration*, %struct.flow_control_configuration** %6, align 8
  %78 = getelementptr inbounds %struct.flow_control_configuration, %struct.flow_control_configuration* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %88 = load i32, i32* @RAMROD_CMD_ID_COMMON_START_TRAFFIC, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %91 = call i32 @ecore_sp_post(%struct.bxe_softc* %87, i32 %88, i32 0, i32 %89, i32 %90)
  ret i32 %91
}

declare dso_local i32 @ECORE_MEMSET(%struct.flow_control_configuration*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
