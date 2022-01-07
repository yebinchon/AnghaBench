; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_is_start_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_is_start_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE = common dso_local global i64 0, align 8
@SCIC_PORT_MANUAL_CONFIGURATION_MODE = common dso_local global i64 0, align 8
@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SCI_BASE_PHY_STATE_INITIAL = common dso_local global i64 0, align 8
@SCI_BASE_PHY_STATE_STOPPED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SCI_BASE_PHY_STATE_STARTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_sds_controller_is_start_complete(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %94, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SCI_MAX_PHYS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %97

10:                                               ; preds = %6
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i64 %14
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %10
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCIC_PORT_MANUAL_CONFIGURATION_MODE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %24
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = call i64 @scic_sds_phy_get_port(%struct.TYPE_17__* %34)
  %36 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %33, %10
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SCI_BASE_PHY_STATE_INITIAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %90, label %52

52:                                               ; preds = %44, %38
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FALSE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SCI_BASE_PHY_STATE_STOPPED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %90, label %66

66:                                               ; preds = %58, %52
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SCI_BASE_PHY_STATE_STARTING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %72, %66
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %80, %72, %58, %44
  %91 = load i64, i64* @FALSE, align 8
  store i64 %91, i64* %2, align 8
  br label %99

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %33, %24
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %4, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %4, align 8
  br label %6

97:                                               ; preds = %6
  %98 = load i64, i64* @TRUE, align 8
  store i64 %98, i64* %2, align 8
  br label %99

99:                                               ; preds = %97, %90
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

declare dso_local i64 @scic_sds_phy_get_port(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
