; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i32, i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"[%d] %s\00", align 1
@EFX_EXCEPTION_RX_RECOVERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"RX_RECOVERY\00", align 1
@EFX_EXCEPTION_RX_DSC_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"RX_DSC_ERROR\00", align 1
@EFX_EXCEPTION_TX_DSC_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"TX_DSC_ERROR\00", align 1
@EFX_EXCEPTION_UNKNOWN_SENSOREVT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"UNKNOWN_SENSOREVT\00", align 1
@EFX_EXCEPTION_FWALERT_SRAM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"FWALERT_SRAM\00", align 1
@EFX_EXCEPTION_UNKNOWN_FWALERT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"UNKNOWN_FWALERT\00", align 1
@EFX_EXCEPTION_RX_ERROR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"RX_ERROR\00", align 1
@EFX_EXCEPTION_TX_ERROR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"TX_ERROR\00", align 1
@EFX_EXCEPTION_EV_ERROR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"EV_ERROR\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"hardware exception (code=%u); resetting\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @sfxge_ev_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_exception(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sfxge_evq*, align 8
  %8 = alloca %struct.sfxge_softc*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %10, %struct.sfxge_evq** %7, align 8
  %11 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %12 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %11)
  %13 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %14 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %13, i32 0, i32 2
  %15 = load %struct.sfxge_softc*, %struct.sfxge_softc** %14, align 8
  store %struct.sfxge_softc* %15, %struct.sfxge_softc** %8, align 8
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %20 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @EFX_EXCEPTION_RX_RECOVERY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %81

26:                                               ; preds = %3
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @EFX_EXCEPTION_RX_DSC_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %79

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @EFX_EXCEPTION_TX_DSC_ERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %77

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @EFX_EXCEPTION_UNKNOWN_SENSOREVT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %75

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @EFX_EXCEPTION_FWALERT_SRAM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %73

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @EFX_EXCEPTION_UNKNOWN_FWALERT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %71

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @EFX_EXCEPTION_RX_ERROR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %69

56:                                               ; preds = %51
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @EFX_EXCEPTION_TX_ERROR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %67

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @EFX_EXCEPTION_EV_ERROR, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)
  br label %67

67:                                               ; preds = %61, %60
  %68 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %60 ], [ %66, %61 ]
  br label %69

69:                                               ; preds = %67, %55
  %70 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %55 ], [ %68, %67 ]
  br label %71

71:                                               ; preds = %69, %50
  %72 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %50 ], [ %70, %69 ]
  br label %73

73:                                               ; preds = %71, %45
  %74 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %45 ], [ %72, %71 ]
  br label %75

75:                                               ; preds = %73, %40
  %76 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %40 ], [ %74, %73 ]
  br label %77

77:                                               ; preds = %75, %35
  %78 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %35 ], [ %76, %75 ]
  br label %79

79:                                               ; preds = %77, %30
  %80 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %30 ], [ %78, %77 ]
  br label %81

81:                                               ; preds = %79, %25
  %82 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %25 ], [ %80, %79 ]
  %83 = call i32 @DBGPRINT(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %82)
  %84 = load i32, i32* @B_TRUE, align 4
  %85 = load %struct.sfxge_evq*, %struct.sfxge_evq** %7, align 8
  %86 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @EFX_EXCEPTION_UNKNOWN_SENSOREVT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %92 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i64 %94)
  %96 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %97 = call i32 @sfxge_schedule_reset(%struct.sfxge_softc* %96)
  br label %98

98:                                               ; preds = %90, %81
  %99 = load i32, i32* @B_FALSE, align 4
  ret i32 %99
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i32 @DBGPRINT(i32, i8*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @sfxge_schedule_reset(%struct.sfxge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
