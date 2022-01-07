; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_state_params = type { i32, i32, %struct.ecore_func_sp_obj* }
%struct.ecore_func_sp_obj = type { i64, i32 (%struct.bxe_softc.0*, %struct.ecore_func_sp_obj*, %struct.ecore_func_state_params*)*, i32 (%struct.bxe_softc.1*, %struct.ecore_func_state_params*)*, i32 (%struct.bxe_softc.2*, %struct.ecore_func_sp_obj*, i32)*, i32, i32 }
%struct.bxe_softc.0 = type opaque
%struct.bxe_softc.1 = type opaque
%struct.bxe_softc.2 = type opaque

@ECORE_BUSY = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"timeout waiting for previous ramrod completion\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@ECORE_F_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_func_state_change(%struct.bxe_softc* %0, %struct.ecore_func_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_func_state_params*, align 8
  %6 = alloca %struct.ecore_func_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_func_state_params* %1, %struct.ecore_func_state_params** %5, align 8
  %11 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %11, i32 0, i32 2
  %13 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %12, align 8
  store %struct.ecore_func_sp_obj* %13, %struct.ecore_func_sp_obj** %6, align 8
  store i32 300, i32* %8, align 4
  %14 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %17, i32 0, i32 0
  store i64* %18, i64** %10, align 8
  %19 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %19, i32 0, i32 5
  %21 = call i32 @ECORE_MUTEX_LOCK(i32* %20)
  %22 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %22, i32 0, i32 1
  %24 = load i32 (%struct.bxe_softc.0*, %struct.ecore_func_sp_obj*, %struct.ecore_func_state_params*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_func_sp_obj*, %struct.ecore_func_state_params*)** %23, align 8
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %26 = bitcast %struct.bxe_softc* %25 to %struct.bxe_softc.0*
  %27 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %28 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %29 = call i32 %24(%struct.bxe_softc.0* %26, %struct.ecore_func_sp_obj* %27, %struct.ecore_func_state_params* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ECORE_BUSY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %2
  %34 = load i32, i32* @RAMROD_RETRY, align 4
  %35 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %36 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %35, i32 0, i32 1
  %37 = call i64 @ECORE_TEST_BIT(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ECORE_BUSY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %66

50:                                               ; preds = %48
  %51 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %52 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %51, i32 0, i32 5
  %53 = call i32 @ECORE_MUTEX_UNLOCK(i32* %52)
  %54 = call i32 @ECORE_MSLEEP(i32 10)
  %55 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %56 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %55, i32 0, i32 5
  %57 = call i32 @ECORE_MUTEX_LOCK(i32* %56)
  %58 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %59 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %58, i32 0, i32 1
  %60 = load i32 (%struct.bxe_softc.0*, %struct.ecore_func_sp_obj*, %struct.ecore_func_state_params*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_func_sp_obj*, %struct.ecore_func_state_params*)** %59, align 8
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %62 = bitcast %struct.bxe_softc* %61 to %struct.bxe_softc.0*
  %63 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %64 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %65 = call i32 %60(%struct.bxe_softc.0* %62, %struct.ecore_func_sp_obj* %63, %struct.ecore_func_state_params* %64)
  store i32 %65, i32* %7, align 4
  br label %40

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ECORE_BUSY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %72 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %71, i32 0, i32 5
  %73 = call i32 @ECORE_MUTEX_UNLOCK(i32* %72)
  %74 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %151

76:                                               ; preds = %66
  br label %86

77:                                               ; preds = %33, %2
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %81, i32 0, i32 5
  %83 = call i32 @ECORE_MUTEX_UNLOCK(i32* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %151

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %76
  %87 = load i32, i32* %9, align 4
  %88 = load i64*, i64** %10, align 8
  %89 = call i32 @ECORE_SET_BIT(i32 %87, i64* %88)
  %90 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %91 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %92 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %91, i32 0, i32 1
  %93 = call i64 @ECORE_TEST_BIT(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %97 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @ecore_func_state_change_comp(%struct.bxe_softc* %96, %struct.ecore_func_sp_obj* %97, i32 %98)
  %100 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %100, i32 0, i32 5
  %102 = call i32 @ECORE_MUTEX_UNLOCK(i32* %101)
  br label %147

103:                                              ; preds = %86
  %104 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %105 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %104, i32 0, i32 2
  %106 = load i32 (%struct.bxe_softc.1*, %struct.ecore_func_state_params*)*, i32 (%struct.bxe_softc.1*, %struct.ecore_func_state_params*)** %105, align 8
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %108 = bitcast %struct.bxe_softc* %107 to %struct.bxe_softc.1*
  %109 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %110 = call i32 %106(%struct.bxe_softc.1* %108, %struct.ecore_func_state_params* %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %112 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %111, i32 0, i32 5
  %113 = call i32 @ECORE_MUTEX_UNLOCK(i32* %112)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %103
  %117 = load i32, i32* @ECORE_F_STATE_MAX, align 4
  %118 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %119 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i64*, i64** %10, align 8
  %122 = call i32 @ECORE_CLEAR_BIT(i32 %120, i64* %121)
  %123 = call i32 (...) @ECORE_SMP_MB_AFTER_CLEAR_BIT()
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %151

125:                                              ; preds = %103
  %126 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %127 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %5, align 8
  %128 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %127, i32 0, i32 1
  %129 = call i64 @ECORE_TEST_BIT(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %125
  %132 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %133 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %132, i32 0, i32 3
  %134 = load i32 (%struct.bxe_softc.2*, %struct.ecore_func_sp_obj*, i32)*, i32 (%struct.bxe_softc.2*, %struct.ecore_func_sp_obj*, i32)** %133, align 8
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %136 = bitcast %struct.bxe_softc* %135 to %struct.bxe_softc.2*
  %137 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 %134(%struct.bxe_softc.2* %136, %struct.ecore_func_sp_obj* %137, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %151

144:                                              ; preds = %131
  %145 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %145, i32* %3, align 4
  br label %151

146:                                              ; preds = %125
  br label %147

147:                                              ; preds = %146, %95
  %148 = load i32, i32* %9, align 4
  %149 = load i64*, i64** %10, align 8
  %150 = call i32 @ECORE_RET_PENDING(i32 %148, i64* %149)
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %144, %142, %116, %80, %70
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @ECORE_MUTEX_LOCK(i32*) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_MUTEX_UNLOCK(i32*) #1

declare dso_local i32 @ECORE_MSLEEP(i32) #1

declare dso_local i32 @ECORE_ERR(i8*) #1

declare dso_local i32 @ECORE_SET_BIT(i32, i64*) #1

declare dso_local i32 @ecore_func_state_change_comp(%struct.bxe_softc*, %struct.ecore_func_sp_obj*, i32) #1

declare dso_local i32 @ECORE_CLEAR_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_SMP_MB_AFTER_CLEAR_BIT(...) #1

declare dso_local i32 @ECORE_RET_PENDING(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
