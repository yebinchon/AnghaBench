; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_start_task_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_start_task_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 (i32*)* }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"scif_sas_controller_ready_start_task_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_SAS_HARD_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Controller:0x%x TaskRequest:0x%x Status:0x%x core start failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Controller:0x%x TaskRequest:0x%x Status:0x%x Task start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32)* @scif_sas_controller_ready_start_task_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_controller_ready_start_task_handler(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %12, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %21 = call i32 @sci_base_object_get_logger(%struct.TYPE_17__* %20)
  %22 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %23 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @SCIF_LOG_TRACE(i32 %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 %36(i32* %40, i32* %41, i32* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @SCI_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %114

47:                                               ; preds = %4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = call i64 @scif_sas_task_request_get_function(%struct.TYPE_15__* %48)
  %50 = load i64, i64* @SCI_SAS_HARD_RESET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = bitcast %struct.TYPE_15__* %54 to i32*
  %56 = call i32 @scif_sas_remote_device_target_reset(%struct.TYPE_16__* %53, i32* %55)
  %57 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %57, i64* %5, align 8
  br label %125

58:                                               ; preds = %47
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @scic_controller_start_task(i32 %61, i32 %64, i32 %68, i32 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @SCI_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %58
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32 (i32*)*, i32 (i32*)** %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = call i32 %80(i32* %83)
  br label %113

85:                                               ; preds = %58
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 %92(i32* %96, i32* %97, i32* %98)
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* @SCI_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %85
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = call i32 @sci_base_object_get_logger(%struct.TYPE_17__* %104)
  %106 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %109 = load i64, i64* %13, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @SCIF_LOG_WARNING(i32 %110)
  br label %112

112:                                              ; preds = %103, %85
  br label %113

113:                                              ; preds = %112, %74
  br label %123

114:                                              ; preds = %4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %116 = call i32 @sci_base_object_get_logger(%struct.TYPE_17__* %115)
  %117 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %120 = load i64, i64* %13, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @SCIF_LOG_WARNING(i32 %121)
  br label %123

123:                                              ; preds = %114, %113
  %124 = load i64, i64* %13, align 8
  store i64 %124, i64* %5, align 8
  br label %125

125:                                              ; preds = %123, %52
  %126 = load i64, i64* %5, align 8
  ret i64 %126
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_17__*) #1

declare dso_local i64 @scif_sas_task_request_get_function(%struct.TYPE_15__*) #1

declare dso_local i32 @scif_sas_remote_device_target_reset(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @scic_controller_start_task(i32, i32, i32, i32) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
