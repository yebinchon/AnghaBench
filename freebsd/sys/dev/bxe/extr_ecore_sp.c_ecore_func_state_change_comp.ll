; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_state_change_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_state_change_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_sp_obj = type { i64, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"Bad MC reply %d for func %d in state %d pending 0x%lx, next_state %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Completing command %d for func %d, setting state to %d\0A\00", align 1
@ECORE_F_STATE_MAX = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_sp_obj*, i32)* @ecore_func_state_change_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_state_change_comp(%struct.bxe_softc* %0, %struct.ecore_func_sp_obj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_func_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_func_sp_obj* %1, %struct.ecore_func_sp_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %10 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ECORE_TEST_AND_CLEAR_BIT(i32 %12, i64* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %18 = call i32 @ECORE_FUNC_ID(%struct.bxe_softc* %17)
  %19 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i32 %21, i64 %22, i32 %25)
  %27 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %3
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %32 = call i32 @ECORE_FUNC_ID(%struct.bxe_softc* %31)
  %33 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ECORE_MSG(%struct.bxe_softc* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32, i32 %35)
  %37 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ECORE_F_STATE_MAX, align 4
  %43 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = call i32 (...) @wmb()
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %6, align 8
  %48 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %47, i32 0, i32 0
  %49 = call i32 @ECORE_CLEAR_BIT(i32 %46, i64* %48)
  %50 = call i32 (...) @ECORE_SMP_MB_AFTER_CLEAR_BIT()
  %51 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %28, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ECORE_TEST_AND_CLEAR_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ECORE_FUNC_ID(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ECORE_CLEAR_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_SMP_MB_AFTER_CLEAR_BIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
