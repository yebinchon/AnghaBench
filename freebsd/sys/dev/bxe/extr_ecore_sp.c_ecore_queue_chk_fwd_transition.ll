; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_chk_fwd_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_chk_fwd_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_sp_obj = type { i32, i32 }
%struct.ecore_queue_state_params = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ECORE_Q_STATE_MAX = common dso_local global i32 0, align 4
@ECORE_Q_CMD_INIT = common dso_local global i32 0, align 4
@ECORE_Q_CMD_SETUP_TX_ONLY = common dso_local global i32 0, align 4
@ECORE_Q_FLG_ACTIVE = common dso_local global i32 0, align 4
@ECORE_Q_CMD_CFC_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Illegal state: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Good state transition: %d(%d)->%d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Bad state transition request: %d %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_queue_sp_obj*, %struct.ecore_queue_state_params*)* @ecore_queue_chk_fwd_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_queue_chk_fwd_transition(%struct.bxe_softc* %0, %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_state_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_queue_sp_obj*, align 8
  %7 = alloca %struct.ecore_queue_state_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_sp_obj** %6, align 8
  store %struct.ecore_queue_state_params* %2, %struct.ecore_queue_state_params** %7, align 8
  %11 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @ECORE_Q_STATE_MAX, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %7, align 8
  %16 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %47 [
    i32 128, label %19
    i32 129, label %25
    i32 131, label %41
    i32 130, label %41
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @ECORE_Q_CMD_INIT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 129, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %19
  br label %50

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @ECORE_Q_CMD_SETUP_TX_ONLY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, i32* @ECORE_Q_FLG_ACTIVE, align 4
  %31 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @ECORE_TEST_BIT(i32 %30, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 131, i32* %9, align 4
  br label %39

38:                                               ; preds = %29
  store i32 130, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %25
  br label %50

41:                                               ; preds = %3, %3
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ECORE_Q_CMD_CFC_DEL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 128, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %41
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %46, %40, %24
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ECORE_Q_STATE_MAX, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @ECORE_MSG(%struct.bxe_softc* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %70

64:                                               ; preds = %50
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @ECORE_MSG(%struct.bxe_softc* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %54
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
