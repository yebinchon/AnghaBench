; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_start_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_start_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*)* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 (i32*, i32*, %struct.TYPE_18__*)*, i32 (i32*, i32*, %struct.TYPE_18__*)* }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"scif_sas_controller_ready_start_io_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_BASE_REQUEST_STATE_STARTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Controller:0x%x IORequest:0x%x Status:0x%x core IO start failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Controller:0x%x IORequest:0x%x Status:0x%x IO start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_18__*, i32)* @scif_sas_controller_ready_start_io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_controller_ready_start_io_handler(i32* %0, i32* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = bitcast %struct.TYPE_18__* %13 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %11, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %12, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %20 = call i32 @sci_base_object_get_logger(%struct.TYPE_21__* %19)
  %21 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %22 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @SCIF_LOG_TRACE(i32 %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64 (i32*, i32*, %struct.TYPE_18__*)*, i64 (i32*, i32*, %struct.TYPE_18__*)** %34, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = call i64 %35(i32* %39, i32* %40, %struct.TYPE_18__* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @SCI_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @scic_controller_start_io(i32 %49, i32 %52, i32 %56, i32 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @SCI_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %46
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* @SCI_BASE_REQUEST_STATE_STARTED, align 4
  %66 = call i32 @sci_base_state_machine_change_state(i32* %64, i32 %65)
  br label %98

67:                                               ; preds = %46
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32 (i32*, i32*, %struct.TYPE_18__*)*, i32 (i32*, i32*, %struct.TYPE_18__*)** %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = call i32 %74(i32* %78, i32* %79, %struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = call i32 %87(%struct.TYPE_18__* %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %91 = call i32 @sci_base_object_get_logger(%struct.TYPE_21__* %90)
  %92 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @SCIF_LOG_WARNING(i32 %96)
  br label %98

98:                                               ; preds = %67, %62
  br label %108

99:                                               ; preds = %4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %101 = call i32 @sci_base_object_get_logger(%struct.TYPE_21__* %100)
  %102 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %105 = load i64, i64* %9, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @SCIF_LOG_WARNING(i32 %106)
  br label %108

108:                                              ; preds = %99, %98
  %109 = load i64, i64* %9, align 8
  ret i64 %109
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_21__*) #1

declare dso_local i64 @scic_controller_start_io(i32, i32, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
