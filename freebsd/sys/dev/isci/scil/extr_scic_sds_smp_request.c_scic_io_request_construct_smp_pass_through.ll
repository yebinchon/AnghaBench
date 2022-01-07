; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_smp_request.c_scic_io_request_construct_smp_pass_through.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_smp_request.c_scic_io_request_construct_smp_pass_through.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (i8*, i64**)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SCIC_LOG_OBJECT_SMP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"scic_io_request_construct_smp_pass_through(0x%x) enter\0A\00", align 1
@SCIC_SMP_PROTOCOL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@scic_sds_smp_request_started_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_RESPONSE = common dso_local global i32 0, align 4
@SCI_BASE_REQUEST_STATE_CONSTRUCTED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_io_request_construct_smp_pass_through(i64 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %8, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %12 = call i32 @sci_base_object_get_logger(%struct.TYPE_16__* %11)
  %13 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = ptrtoint %struct.TYPE_16__* %14 to i32
  %16 = call i32 @SCIC_LOG_TRACE(i32 %15)
  %17 = load i32, i32* @SCIC_SMP_PROTOCOL, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32 (i8*, i64**)*, i32 (i8*, i64**)** %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = bitcast %struct.TYPE_16__* %26 to i8*
  %28 = call i32 %25(i8* %27, i64** %6)
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to i8*
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memcpy(i8* %31, i64* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 4
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load i32 (i8*)*, i32 (i8*)** %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = bitcast %struct.TYPE_16__* %43 to i8*
  %45 = call i32 %42(i8* %44)
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32 (i8*)*, i32 (i8*)** %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = bitcast %struct.TYPE_16__* %51 to i8*
  %53 = call i32 %50(i8* %52)
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32 (i8*)*, i32 (i8*)** %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = bitcast %struct.TYPE_16__* %59 to i8*
  %61 = call i32 %58(i8* %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* @scic_sds_smp_request_started_substate_table, align 4
  %70 = load i32, i32* @SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_RESPONSE, align 4
  %71 = call i32 @sci_base_state_machine_construct(i32* %65, i32* %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = call i32 @scu_smp_request_construct_task_context(%struct.TYPE_16__* %72, %struct.TYPE_14__* %5)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* @SCI_BASE_REQUEST_STATE_CONSTRUCTED, align 4
  %78 = call i32 @sci_base_state_machine_change_state(i32* %76, i32 %77)
  %79 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %79
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, i32*, i32, i32) #1

declare dso_local i32 @scu_smp_request_construct_task_context(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
