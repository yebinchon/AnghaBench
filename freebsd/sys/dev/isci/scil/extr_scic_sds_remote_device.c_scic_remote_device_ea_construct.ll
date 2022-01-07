; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_ea_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_ea_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_18__, i32, i8*, %struct.TYPE_17__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"scic_remote_device_ea_sas_construct0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@scic_sds_smp_remote_device_ready_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE = common dso_local global i32 0, align 4
@scic_sds_stp_remote_device_ready_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_remote_device_ea_construct(i64 %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sci_base_object_get_logger(i32 %12)
  %14 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %15 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %16 = or i32 %14, %15
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = ptrtoint %struct.TYPE_21__* %18 to i32
  %20 = call i32 @SCIC_LOG_TRACE(i32 %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @scic_sds_port_get_controller(i32 %23)
  store i32* %24, i32** %7, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = call i32 @scic_sds_remote_device_get_info_from_smp_discover_response(%struct.TYPE_22__* %25, %struct.TYPE_21__* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = call i64 @scic_sds_controller_allocate_remote_node_context(i32* %28, %struct.TYPE_22__* %29, i32* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @SCI_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %2
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  br label %92

50:                                               ; preds = %38
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load i8*, i8** @TRUE, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* @scic_sds_smp_remote_device_ready_substate_table, align 4
  %68 = load i32, i32* @SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE, align 4
  %69 = call i32 @sci_base_state_machine_construct(i32* %63, i32* %66, i32 %67, i32 %68)
  br label %91

70:                                               ; preds = %50
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = load i8*, i8** @TRUE, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* @scic_sds_stp_remote_device_ready_substate_table, align 4
  %88 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE, align 4
  %89 = call i32 @sci_base_state_machine_construct(i32* %83, i32* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %70
  br label %91

91:                                               ; preds = %90, %58
  br label %92

92:                                               ; preds = %91, %46
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @scic_sds_port_get_max_allowed_speed(i32 %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MIN(i32 %96, i32 %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %92, %2
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32) #1

declare dso_local i32* @scic_sds_port_get_controller(i32) #1

declare dso_local i32 @scic_sds_remote_device_get_info_from_smp_discover_response(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @scic_sds_controller_allocate_remote_node_context(i32*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, i32*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @scic_sds_port_get_max_allowed_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
