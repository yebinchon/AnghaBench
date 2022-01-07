; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_common_start_high_priority_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_common_start_high_priority_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_26__*)* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__, %struct.TYPE_23__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 (i32*, i32*, %struct.TYPE_26__*)*, i32 (i32*, i32*, %struct.TYPE_26__*)* }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_BASE_REQUEST_STATE_STARTED = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Controller:0x%x IORequest:0x%x Status:0x%x core IO start failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Controller:0x%x IORequest:0x%x Status:0x%x IO start failed\0A\00", align 1
@SCIC_SMP_PROTOCOL = common dso_local global i64 0, align 8
@SCIF_SAS_IO_RETRY_LIMIT = common dso_local global i64 0, align 8
@SMP_REQUEST_RETRY_WAIT_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_26__*, i32)* @scif_sas_controller_common_start_high_priority_io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_controller_common_start_high_priority_io_handler(i32* %0, i32* %1, %struct.TYPE_26__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %16 = bitcast %struct.TYPE_26__* %15 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %10, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %12, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64 (i32*, i32*, %struct.TYPE_26__*)*, i64 (i32*, i32*, %struct.TYPE_26__*)** %26, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %34 = call i64 %27(i32* %31, i32* %32, %struct.TYPE_26__* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @SCI_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @scic_controller_start_io(i32 %41, i32 %44, i32 %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @SCI_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* @SCI_BASE_REQUEST_STATE_STARTED, align 4
  %58 = call i32 @sci_base_state_machine_change_state(i32* %56, i32 %57)
  br label %90

59:                                               ; preds = %38
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32 (i32*, i32*, %struct.TYPE_26__*)*, i32 (i32*, i32*, %struct.TYPE_26__*)** %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %73 = call i32 %66(i32* %70, i32* %71, %struct.TYPE_26__* %72)
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %78, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %81 = call i32 %79(%struct.TYPE_26__* %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %83 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %82)
  %84 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @SCIF_LOG_WARNING(i32 %88)
  br label %90

90:                                               ; preds = %59, %54
  br label %108

91:                                               ; preds = %4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %93 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %92)
  %94 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %97 = load i64, i64* %9, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @SCIF_LOG_WARNING(i32 %98)
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %104, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %107 = call i32 %105(%struct.TYPE_26__* %106)
  br label %108

108:                                              ; preds = %91, %90
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %169

114:                                              ; preds = %108
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* @SCI_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %169

118:                                              ; preds = %114
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @scic_io_request_get_protocol(i32 %122)
  store i64 %123, i64* %13, align 8
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %14, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %133 = bitcast %struct.TYPE_28__* %132 to i32*
  %134 = call i32 @scif_sas_internal_io_request_destruct(i32 %131, i32* %133)
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* @SCIC_SMP_PROTOCOL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %118
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @scif_cb_timer_destroy(%struct.TYPE_19__* %146, i32* %151)
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  store i32* null, i32** %156, align 8
  br label %157

157:                                              ; preds = %145, %138
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* @SCIF_SAS_IO_RETRY_LIMIT, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i32*, i32** %6, align 8
  %163 = bitcast i32* %162 to %struct.TYPE_27__*
  %164 = load i64, i64* %14, align 8
  %165 = load i32, i32* @SMP_REQUEST_RETRY_WAIT_DURATION, align 4
  %166 = call i32 @scif_sas_smp_remote_device_retry_internal_io(%struct.TYPE_27__* %163, i64 %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %157
  br label %168

168:                                              ; preds = %167, %118
  br label %169

169:                                              ; preds = %168, %114, %108
  %170 = load i64, i64* %9, align 8
  ret i64 %170
}

declare dso_local i64 @scic_controller_start_io(i32, i32, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_19__*) #1

declare dso_local i64 @scic_io_request_get_protocol(i32) #1

declare dso_local i32 @scif_sas_internal_io_request_destruct(i32, i32*) #1

declare dso_local i32 @scif_cb_timer_destroy(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @scif_sas_smp_remote_device_retry_internal_io(%struct.TYPE_27__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
