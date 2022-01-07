; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_remote_device_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i64, i32* }

@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"scic_remote_device_construct(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@scic_sds_remote_device_state_table = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_remote_device_construct(i64 %0, i8* %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @sci_base_object_get_logger(i32* %13)
  %15 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %16 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %23 = ptrtoint %struct.TYPE_7__** %22 to i32
  %24 = call i32 @SCIC_LOG_TRACE(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @memset(i8* %25, i32 0, i32 32)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = bitcast %struct.TYPE_7__* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 32
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @sci_base_object_get_logger(i32* %42)
  %44 = load i32, i32* @scic_sds_remote_device_state_table, align 4
  %45 = call i32 @sci_base_remote_device_construct(i32* %41, i32 %43, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 4
  %51 = call i32 @scic_sds_remote_node_context_construct(%struct.TYPE_7__* %46, i32* %49, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = call i32 @sci_object_set_association(i32* %54, %struct.TYPE_7__* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = call i32 @scic_sds_remote_device_initialize_state_logging(%struct.TYPE_7__* %57)
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sci_base_remote_device_construct(i32*, i32, i32) #1

declare dso_local i32 @scic_sds_remote_node_context_construct(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @sci_object_set_association(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @scic_sds_remote_device_initialize_state_logging(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
