; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_config_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_config_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_ramrod_params = type { i64, %struct.ecore_vlan_mac_obj* }
%struct.ecore_vlan_mac_obj = type { i32, %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)* }
%struct.bxe_softc.0 = type opaque

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@RAMROD_CONT = common dso_local global i32 0, align 4
@ECORE_PENDING = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"RAMROD_DRV_CLR_ONLY requested: clearing a pending bit.\0A\00", align 1
@RAMROD_EXEC = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_config_vlan_mac(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_vlan_mac_ramrod_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_raw_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_vlan_mac_ramrod_params* %1, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %12 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 1
  %15 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  store %struct.ecore_vlan_mac_obj* %15, %struct.ecore_vlan_mac_obj** %7, align 8
  %16 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %16, i32 0, i32 0
  store i64* %17, i64** %8, align 8
  %18 = load i32, i32* @RAMROD_CONT, align 4
  %19 = load i64*, i64** %8, align 8
  %20 = call i32 @ECORE_TEST_BIT(i32 %18, i64* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %21, i32 0, i32 1
  store %struct.ecore_raw_obj* %22, %struct.ecore_raw_obj** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %27 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %28 = call i32 @ecore_vlan_mac_push_new_cmd(%struct.bxe_softc* %26, %struct.ecore_vlan_mac_ramrod_params* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %131

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %36 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %35, i32 0, i32 0
  %37 = call i32 @ecore_exe_queue_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ECORE_PENDING, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %43 = load i64*, i64** %8, align 8
  %44 = call i32 @ECORE_TEST_BIT(i32 %42, i64* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %48 = call i32 @ECORE_MSG(%struct.bxe_softc* %47, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %50 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %49, i32 0, i32 1
  %51 = load i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)** %50, align 8
  %52 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %53 = call i32 %51(%struct.ecore_raw_obj* %52)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @RAMROD_EXEC, align 4
  %59 = load i64*, i64** %8, align 8
  %60 = call i32 @ECORE_TEST_BIT(i32 %58, i64* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %64 = load i64*, i64** %8, align 8
  %65 = call i32 @ECORE_TEST_BIT(i32 %63, i64* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62, %57, %54
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %69 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %70 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %69, i32 0, i32 1
  %71 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %70, align 8
  %72 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %73 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %72, i32 0, i32 0
  %74 = call i32 @__ecore_vlan_mac_execute_step(%struct.bxe_softc* %68, %struct.ecore_vlan_mac_obj* %71, i64* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %131

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %82 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %83 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %82, i32 0, i32 0
  %84 = call i32 @ECORE_TEST_BIT(i32 %81, i64* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %80
  %87 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %88 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %87, i32 0, i32 0
  %89 = call i32 @ecore_exe_queue_length(i32* %88)
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %126, %86
  %92 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %93 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %92, i32 0, i32 0
  %94 = call i32 @ecore_exe_queue_empty(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %11, align 4
  %99 = icmp ne i32 %97, 0
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi i1 [ false, %91 ], [ %99, %96 ]
  br i1 %101, label %102, label %127

102:                                              ; preds = %100
  %103 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %104 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %103, i32 0, i32 0
  %105 = load i32 (%struct.bxe_softc.0*, %struct.ecore_raw_obj*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_raw_obj*)** %104, align 8
  %106 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %107 = bitcast %struct.bxe_softc* %106 to %struct.bxe_softc.0*
  %108 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %109 = call i32 %105(%struct.bxe_softc.0* %107, %struct.ecore_raw_obj* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %131

114:                                              ; preds = %102
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %116 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %117 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %116, i32 0, i32 1
  %118 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %117, align 8
  %119 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %120 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %119, i32 0, i32 0
  %121 = call i32 @__ecore_vlan_mac_execute_step(%struct.bxe_softc* %115, %struct.ecore_vlan_mac_obj* %118, i64* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %3, align 4
  br label %131

126:                                              ; preds = %114
  br label %91

127:                                              ; preds = %100
  %128 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %128, i32* %3, align 4
  br label %131

129:                                              ; preds = %80
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %127, %124, %112, %77, %31
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @ECORE_TEST_BIT(i32, i64*) #1

declare dso_local i32 @ecore_vlan_mac_push_new_cmd(%struct.bxe_softc*, %struct.ecore_vlan_mac_ramrod_params*) #1

declare dso_local i32 @ecore_exe_queue_empty(i32*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @__ecore_vlan_mac_execute_step(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i64*) #1

declare dso_local i32 @ecore_exe_queue_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
