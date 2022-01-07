; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_start_next_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_start_next_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SCIC_PORT_MANUAL_CONFIGURATION_MODE = common dso_local global i64 0, align 8
@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Controller stop operation failed to stop phy %d because of status %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_sds_controller_start_next_phy(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %90

12:                                               ; preds = %1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SCI_MAX_PHYS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = call i64 @scic_sds_controller_is_start_complete(%struct.TYPE_17__* %19)
  %21 = load i64, i64* @TRUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = load i64, i64* @SCI_SUCCESS, align 8
  %26 = call i32 @scic_sds_controller_transition_to_ready(%struct.TYPE_17__* %24, i64 %25)
  br label %27

27:                                               ; preds = %23, %18
  br label %89

28:                                               ; preds = %12
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i64 %34
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %5, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SCIC_PORT_MANUAL_CONFIGURATION_MODE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %28
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = call i64 @scic_sds_phy_get_port(%struct.TYPE_16__* %45)
  %47 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = call i64 @scic_sds_controller_start_next_phy(%struct.TYPE_17__* %54)
  store i64 %55, i64* %2, align 8
  br label %92

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = call i64 @scic_phy_start(%struct.TYPE_16__* %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @SCI_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = call i32 @scic_sds_controller_phy_timer_start(%struct.TYPE_17__* %64)
  br label %84

66:                                               ; preds = %57
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = call i32 @sci_base_object_get_logger(%struct.TYPE_17__* %67)
  %69 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %70 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %4, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @SCIC_LOG_WARNING(i32 %82)
  br label %84

84:                                               ; preds = %66, %63
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %84, %27
  br label %90

90:                                               ; preds = %89, %1
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %2, align 8
  br label %92

92:                                               ; preds = %90, %49
  %93 = load i64, i64* %2, align 8
  ret i64 %93
}

declare dso_local i64 @scic_sds_controller_is_start_complete(%struct.TYPE_17__*) #1

declare dso_local i32 @scic_sds_controller_transition_to_ready(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @scic_sds_phy_get_port(%struct.TYPE_16__*) #1

declare dso_local i64 @scic_phy_start(%struct.TYPE_16__*) #1

declare dso_local i32 @scic_sds_controller_phy_timer_start(%struct.TYPE_17__*) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
