; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_initialized_start_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_initialized_start_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, i32, %struct.TYPE_12__*, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i8* }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_SAS_MDE_INTERNAL_IO = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"scif_sas_controller_initialized_start_handler(0x%x, 0x%x) enter\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_STARTING = common dso_local global i32 0, align 4
@SCI_MAX_DOMAINS = common dso_local global i64 0, align 8
@SCI_BASE_DOMAIN_STATE_STARTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Controller:0x%x Domain:0x%x Status:0x%x unable to start\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Controller:0x%x Status:0x%x unable to start controller.\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @scif_sas_controller_initialized_start_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_controller_initialized_start_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load i64, i64* @SCIF_SAS_MDE_INTERNAL_IO, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i64 %18
  %20 = bitcast %struct.TYPE_14__* %9 to i8*
  %21 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = call i32 @sci_base_object_get_logger(%struct.TYPE_15__* %26)
  %28 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %29 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @SCIF_LOG_TRACE(i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_STARTING, align 4
  %38 = call i32 @sci_base_state_machine_change_state(i32* %36, i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = call i64 @scif_sas_controller_validate_mdl(%struct.TYPE_15__* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @SCI_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %2
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sci_pool_initialize(i32 %47)
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %66, %44
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @sci_pool_put(i32 %58, i32 %59)
  %61 = call i64 (...) @scif_sas_internal_request_get_object_size()
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %8, align 8
  br label %49

69:                                               ; preds = %49
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = call i32 @scif_cb_start_internal_io_task_create(%struct.TYPE_15__* %70)
  br label %72

72:                                               ; preds = %69, %2
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @SCI_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %72
  store i64 0, i64* %8, align 8
  br label %77

77:                                               ; preds = %105, %76
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @SCI_MAX_DOMAINS, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @SCI_SUCCESS, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ false, %77 ], [ %84, %81 ]
  br i1 %86, label %87, label %108

87:                                               ; preds = %85
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* @SCI_BASE_DOMAIN_STATE_STARTING, align 4
  %96 = call i32 @sci_base_state_machine_change_state(i32* %94, i32 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %87
  %106 = load i64, i64* %8, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %8, align 8
  br label %77

108:                                              ; preds = %85
  br label %109

109:                                              ; preds = %108, %72
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @SCI_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = call i32 @sci_base_object_get_logger(%struct.TYPE_15__* %114)
  %116 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %117 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %6, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @SCIF_LOG_ERROR(i32 %122)
  %124 = load i64, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  br label %151

125:                                              ; preds = %109
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @scic_controller_start(i32 %128, i32 %129)
  store i64 %130, i64* %6, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* @SCI_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %125
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %136 = call i32 @sci_base_object_get_logger(%struct.TYPE_15__* %135)
  %137 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %138 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = load i64, i64* %6, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @SCIF_LOG_ERROR(i32 %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %148 = call i32 @sci_base_state_machine_change_state(i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %134, %125
  %150 = load i64, i64* %6, align 8
  store i64 %150, i64* %3, align 8
  br label %151

151:                                              ; preds = %149, %113
  %152 = load i64, i64* %3, align 8
  ret i64 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #2

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_15__*) #2

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #2

declare dso_local i64 @scif_sas_controller_validate_mdl(%struct.TYPE_15__*) #2

declare dso_local i32 @sci_pool_initialize(i32) #2

declare dso_local i32 @sci_pool_put(i32, i32) #2

declare dso_local i64 @scif_sas_internal_request_get_object_size(...) #2

declare dso_local i32 @scif_cb_start_internal_io_task_create(%struct.TYPE_15__*) #2

declare dso_local i32 @SCIF_LOG_ERROR(i32) #2

declare dso_local i64 @scic_controller_start(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
