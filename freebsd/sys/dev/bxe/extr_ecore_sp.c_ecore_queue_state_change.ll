; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_state_params = type { i32, %struct.ecore_queue_sp_obj* }
%struct.ecore_queue_sp_obj = type { i64, i32 (%struct.bxe_softc.0*, %struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)*, i32 (%struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)*, i32 (%struct.bxe_softc.1*, %struct.ecore_queue_state_params*)*, i32 (%struct.bxe_softc.2*, %struct.ecore_queue_sp_obj*, i32)*, i32, i32 (%struct.bxe_softc.3*, %struct.ecore_queue_sp_obj*, i32)* }
%struct.bxe_softc.0 = type opaque
%struct.bxe_softc.1 = type opaque
%struct.bxe_softc.2 = type opaque
%struct.bxe_softc.3 = type opaque

@.str = private unnamed_addr constant [43 x i8] c"check transition returned an error. rc %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"pending bit was=%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pending bit now=%lx\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@ECORE_Q_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_queue_state_change(%struct.bxe_softc* %0, %struct.ecore_queue_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_queue_state_params*, align 8
  %6 = alloca %struct.ecore_queue_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_queue_state_params* %1, %struct.ecore_queue_state_params** %5, align 8
  %10 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %11 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %10, i32 0, i32 1
  %12 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %11, align 8
  store %struct.ecore_queue_sp_obj* %12, %struct.ecore_queue_sp_obj** %6, align 8
  %13 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %13, i32 0, i32 0
  store i64* %14, i64** %9, align 8
  %15 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %15, i32 0, i32 1
  %17 = load i32 (%struct.bxe_softc.0*, %struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)** %16, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = bitcast %struct.bxe_softc* %18 to %struct.bxe_softc.0*
  %20 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %21 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %22 = call i32 %17(%struct.bxe_softc.0* %19, %struct.ecore_queue_sp_obj* %20, %struct.ecore_queue_state_params* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %105

29:                                               ; preds = %2
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ECORE_MSG(%struct.bxe_softc* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %35, i32 0, i32 2
  %37 = load i32 (%struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)*, i32 (%struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)** %36, align 8
  %38 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %39 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %40 = call i32 %37(%struct.ecore_queue_sp_obj* %38, %struct.ecore_queue_state_params* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %42 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ECORE_MSG(%struct.bxe_softc* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %47 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %48 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %47, i32 0, i32 0
  %49 = call i64 @ECORE_TEST_BIT(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %29
  %52 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %52, i32 0, i32 6
  %54 = load i32 (%struct.bxe_softc.3*, %struct.ecore_queue_sp_obj*, i32)*, i32 (%struct.bxe_softc.3*, %struct.ecore_queue_sp_obj*, i32)** %53, align 8
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %56 = bitcast %struct.bxe_softc* %55 to %struct.bxe_softc.3*
  %57 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 %54(%struct.bxe_softc.3* %56, %struct.ecore_queue_sp_obj* %57, i32 %58)
  br label %101

60:                                               ; preds = %29
  %61 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %61, i32 0, i32 3
  %63 = load i32 (%struct.bxe_softc.1*, %struct.ecore_queue_state_params*)*, i32 (%struct.bxe_softc.1*, %struct.ecore_queue_state_params*)** %62, align 8
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %65 = bitcast %struct.bxe_softc* %64 to %struct.bxe_softc.1*
  %66 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %67 = call i32 %63(%struct.bxe_softc.1* %65, %struct.ecore_queue_state_params* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load i32, i32* @ECORE_Q_STATE_MAX, align 4
  %72 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %73 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i64*, i64** %9, align 8
  %76 = call i32 @ECORE_CLEAR_BIT(i32 %74, i64* %75)
  %77 = call i32 (...) @ECORE_SMP_MB_AFTER_CLEAR_BIT()
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %105

79:                                               ; preds = %60
  %80 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %81 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %82 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %81, i32 0, i32 0
  %83 = call i64 @ECORE_TEST_BIT(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %86, i32 0, i32 4
  %88 = load i32 (%struct.bxe_softc.2*, %struct.ecore_queue_sp_obj*, i32)*, i32 (%struct.bxe_softc.2*, %struct.ecore_queue_sp_obj*, i32)** %87, align 8
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %90 = bitcast %struct.bxe_softc* %89 to %struct.bxe_softc.2*
  %91 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 %88(%struct.bxe_softc.2* %90, %struct.ecore_queue_sp_obj* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %105

98:                                               ; preds = %85
  %99 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %99, i32* %3, align 4
  br label %105

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %51
  %102 = load i32, i32* %8, align 4
  %103 = load i64*, i64** %9, align 8
  %104 = call i32 @ECORE_RET_PENDING(i32 %102, i64* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %98, %96, %70, %25
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i64) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_CLEAR_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_SMP_MB_AFTER_CLEAR_BIT(...) #1

declare dso_local i32 @ECORE_RET_PENDING(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
