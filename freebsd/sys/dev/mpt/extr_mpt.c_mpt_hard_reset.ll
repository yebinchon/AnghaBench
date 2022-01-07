; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_hard_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_hard_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32*, i64 }

@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hard reset\0A\00", align 1
@MPT_OFFSET_RESET_1078 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"WARNING - Could not enter diagnostic mode !\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Trying to reset anyway.\0A\00", align 1
@MPT_OFFSET_DIAGNOSTIC = common dso_local global i32 0, align 4
@MPI_DIAG_DISABLE_ARM = common dso_local global i32 0, align 4
@MPI_DIAG_RESET_ADAPTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"WARNING - Failed hard reset! Trying to initialize anyway.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"WARNING - Firmware Download Failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Trying to initialize anyway.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_hard_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_hard_reset(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %7 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %8 = call i32 @mpt_lprt(%struct.mpt_softc* %6, i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %15 = load i32, i32* @MPT_OFFSET_RESET_1078, align 4
  %16 = call i32 @mpt_write(%struct.mpt_softc* %14, i32 %15, i32 7)
  %17 = call i32 @DELAY(i32 1000)
  br label %86

18:                                               ; preds = %1
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %20 = call i32 @mpt_enable_diag_mode(%struct.mpt_softc* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %25 = call i32 @mpt_prt(%struct.mpt_softc* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %27 = call i32 @mpt_prt(%struct.mpt_softc* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %30 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %31 = call i32 @mpt_read(%struct.mpt_softc* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %33 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MPI_DIAG_DISABLE_ARM, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mpt_write(%struct.mpt_softc* %32, i32 %33, i32 %36)
  %38 = call i32 @DELAY(i32 1000)
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %40 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MPI_DIAG_RESET_ADAPTER, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @mpt_write(%struct.mpt_softc* %39, i32 %40, i32 %43)
  store i32 5000, i32* %4, align 4
  br label %45

45:                                               ; preds = %59, %28
  %46 = call i32 @DELAY(i32 1000)
  %47 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %48 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %49 = call i32 @mpt_read(%struct.mpt_softc* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MPI_DIAG_RESET_ADAPTER, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ false, %50 ], [ %58, %54 ]
  br i1 %60, label %45, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %66 = call i32 @mpt_prt(%struct.mpt_softc* %65, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %69 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %74 = call i32 @mpt_download_fw(%struct.mpt_softc* %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %79 = call i32 @mpt_prt(%struct.mpt_softc* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %81 = call i32 @mpt_prt(%struct.mpt_softc* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %85 = call i32 @mpt_disable_diag_mode(%struct.mpt_softc* %84)
  br label %86

86:                                               ; preds = %83, %13
  ret void
}

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*) #1

declare dso_local i32 @mpt_write(%struct.mpt_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mpt_enable_diag_mode(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @mpt_read(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_download_fw(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_disable_diag_mode(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
