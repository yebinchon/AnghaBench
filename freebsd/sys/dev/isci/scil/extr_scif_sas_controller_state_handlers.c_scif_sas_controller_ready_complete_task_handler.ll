; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_complete_task_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_complete_task_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (i32*, i32*, i32*)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (i32*)* }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"scif_sas_controller_ready_complete_task_handler(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SAS_HARD_RESET = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [81 x i8] c"Controller:0x%x TaskRequest:0x%x Status:0x%x CoreStatus:0x%x failed to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*)* @scif_sas_controller_ready_complete_task_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_controller_ready_complete_task_handler(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %10, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %19)
  %21 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %22 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @SCIF_LOG_TRACE(i32 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 %35(i32* %39, i32* %40, i32* %41)
  store i64 %42, i64* %11, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = call i64 @scif_sas_task_request_get_function(%struct.TYPE_14__* %43)
  %45 = load i64, i64* @SCI_SAS_HARD_RESET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %4, align 8
  br label %92

49:                                               ; preds = %3
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32 (i32*)*, i32 (i32*)** %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = call i32 %55(i32* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @scic_controller_complete_task(i32 %62, i32 %65, i32 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @SCI_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %49
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %74, %49
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @SCI_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %81)
  %83 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @SCIF_LOG_WARNING(i32 %88)
  br label %90

90:                                               ; preds = %80, %76
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %47
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_16__*) #1

declare dso_local i64 @scif_sas_task_request_get_function(%struct.TYPE_14__*) #1

declare dso_local i64 @scic_controller_complete_task(i32, i32, i32) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
