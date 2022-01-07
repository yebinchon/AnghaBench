; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_comp_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_comp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_sp_obj = type { i64, i64, i64, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [71 x i8] c"Bad MC reply %d for queue %d in state %d pending 0x%lx, next_state %d\0A\00", align 1
@ECORE_PRIMARY_CID_INDEX = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"illegal value for next tx_only: %d. max cos was %d\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Completing command %d for queue %d, setting state to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"primary cid %d: num tx-only cons %d\0A\00", align 1
@ECORE_Q_STATE_MAX = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_queue_sp_obj*, i32)* @ecore_queue_comp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_queue_comp_cmd(%struct.bxe_softc* %0, %struct.ecore_queue_sp_obj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_queue_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_sp_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %10 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ECORE_TEST_AND_CLEAR_BIT(i32 %12, i64* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @ECORE_PRIMARY_CID_INDEX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %30 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, i64, i64, ...) @ECORE_ERR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %24, i32 %27, i64 %28, i32 %31)
  %33 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %101

34:                                               ; preds = %3
  %35 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %39 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, i64, i64, ...) @ECORE_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %48)
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @ECORE_PRIMARY_CID_INDEX, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %61 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.bxe_softc*, i8*, i32, i64, ...) @ECORE_MSG(%struct.bxe_softc* %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %52, i64 %59, i32 %62)
  %64 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %50
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %70 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @ECORE_PRIMARY_CID_INDEX, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %77 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (%struct.bxe_softc*, i8*, i32, i64, ...) @ECORE_MSG(%struct.bxe_softc* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %68, %50
  %81 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %85 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @ECORE_Q_STATE_MAX, align 4
  %92 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = call i32 (...) @wmb()
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %97 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %96, i32 0, i32 0
  %98 = call i32 @ECORE_CLEAR_BIT(i32 %95, i64* %97)
  %99 = call i32 (...) @ECORE_SMP_MB_AFTER_CLEAR_BIT()
  %100 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %80, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @ECORE_TEST_AND_CLEAR_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_ERR(i8*, i64, i64, ...) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, i64, ...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ECORE_CLEAR_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_SMP_MB_AFTER_CLEAR_BIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
