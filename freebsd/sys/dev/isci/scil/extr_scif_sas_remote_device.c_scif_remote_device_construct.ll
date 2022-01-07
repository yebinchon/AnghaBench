; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_remote_device_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_remote_device_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_9__, i32, i32, i32*, i32, i64, i32*, i32, i64, i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"scif_remote_device_construct(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UNSPECIFIED = common dso_local global i32 0, align 4
@scif_sas_remote_device_state_table = common dso_local global i32 0, align 4
@scif_sas_remote_device_starting_substate_table = common dso_local global i32 0, align 4
@SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_COMPLETE = common dso_local global i32 0, align 4
@scif_sas_remote_device_ready_substate_table = common dso_local global i32 0, align 4
@SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_remote_device_construct(i64 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %13)
  %15 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = ptrtoint i8** %18 to i32
  %20 = call i32 @SCIF_LOG_TRACE(i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @memset(i8* %21, i32 0, i32 96)
  %23 = load i8*, i8** %5, align 8
  %24 = load i8**, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 14
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 13
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @SCI_SUCCESS, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 11
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UNSPECIFIED, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %54)
  %56 = load i32, i32* @scif_sas_remote_device_state_table, align 4
  %57 = call i32 @sci_base_remote_device_construct(%struct.TYPE_9__* %53, i32 %55, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* @scif_sas_remote_device_starting_substate_table, align 4
  %64 = load i32, i32* @SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_COMPLETE, align 4
  %65 = call i32 @sci_base_state_machine_construct(i32* %59, i32* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* @scif_sas_remote_device_ready_substate_table, align 4
  %72 = load i32, i32* @SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL, align 4
  %73 = call i32 @sci_base_state_machine_construct(i32* %67, i32* %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = call i32 @scif_sas_remote_device_initialize_state_logging(%struct.TYPE_7__* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = getelementptr inbounds i32, i32* %80, i64 96
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = call i32 @scic_remote_device_construct(i32 %78, i32* %81, i32* %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = call i32 @sci_object_set_association(i32 %87, %struct.TYPE_7__* %88)
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sci_base_remote_device_construct(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, i32*, i32, i32) #1

declare dso_local i32 @scif_sas_remote_device_initialize_state_logging(%struct.TYPE_7__*) #1

declare dso_local i32 @scic_remote_device_construct(i32, i32*, i32*) #1

declare dso_local i32 @sci_object_set_association(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
