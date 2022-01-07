; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_da_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_da_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_18__*, i32, %struct.TYPE_23__, i32, i8*, %struct.TYPE_22__, i32, i32, i32, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"scic_remote_device_da_construct(0x%x) enter\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@scic_sds_stp_remote_device_ready_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE = common dso_local global i32 0, align 4
@scic_sds_smp_remote_device_ready_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_remote_device_da_construct(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__, align 4
  %7 = alloca %struct.TYPE_26__, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %9, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %13 = call i32 @sci_base_object_get_logger(%struct.TYPE_18__* %12)
  %14 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %15 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %18 = or i32 %16, %17
  %19 = load i64, i64* %2, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @SCIC_LOG_TRACE(i32 %20)
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = call i32 @scic_sds_port_get_attached_protocols(%struct.TYPE_18__* %24, %struct.TYPE_24__* %6)
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 8
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 10
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = call i32 @scic_sds_remote_device_is_atapi(%struct.TYPE_25__* %36)
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = call i32 @scic_port_get_properties(%struct.TYPE_18__* %42, %struct.TYPE_26__* %7)
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SCI_GET_BITS_SET_COUNT(i32 %45, i32 %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = call i64 @scic_sds_controller_allocate_remote_node_context(i32 %54, %struct.TYPE_25__* %55, i32* %4)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @SCI_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %134

60:                                               ; preds = %1
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @scic_sds_remote_node_context_set_remote_node_index(i32 %63, i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 7
  %71 = call i32 @scic_sds_port_get_attached_sas_address(%struct.TYPE_18__* %68, i32* %70)
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %60
  %80 = load i8*, i8** @FALSE, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  br label %125

83:                                               ; preds = %60
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load i8*, i8** @TRUE, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i32, i32* @scic_sds_stp_remote_device_ready_substate_table, align 4
  %101 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE, align 4
  %102 = call i32 @sci_base_state_machine_construct(i32* %96, i32* %99, i32 %100, i32 %101)
  br label %124

103:                                              ; preds = %83
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load i8*, i8** @TRUE, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* @scic_sds_smp_remote_device_ready_substate_table, align 4
  %121 = load i32, i32* @SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE, align 4
  %122 = call i32 @sci_base_state_machine_construct(i32* %116, i32* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %103
  br label %124

124:                                              ; preds = %123, %91
  br label %125

125:                                              ; preds = %124, %79
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = call i32 @scic_sds_port_get_max_allowed_speed(%struct.TYPE_18__* %128)
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %125, %1
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_18__*) #1

declare dso_local i32 @scic_sds_port_get_attached_protocols(%struct.TYPE_18__*, %struct.TYPE_24__*) #1

declare dso_local i32 @scic_sds_remote_device_is_atapi(%struct.TYPE_25__*) #1

declare dso_local i32 @scic_port_get_properties(%struct.TYPE_18__*, %struct.TYPE_26__*) #1

declare dso_local i32 @SCI_GET_BITS_SET_COUNT(i32, i32) #1

declare dso_local i64 @scic_sds_controller_allocate_remote_node_context(i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @scic_sds_remote_node_context_set_remote_node_index(i32, i32) #1

declare dso_local i32 @scic_sds_port_get_attached_sas_address(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, i32*, i32, i32) #1

declare dso_local i32 @scic_sds_port_get_max_allowed_speed(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
