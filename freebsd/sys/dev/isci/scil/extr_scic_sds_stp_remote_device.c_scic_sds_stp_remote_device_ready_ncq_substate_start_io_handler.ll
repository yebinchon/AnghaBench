; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_ncq_substate_start_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_ncq_substate_start_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 (i32*)* }

@SAT_PROTOCOL_FPDMA = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @scic_sds_stp_remote_device_ready_ncq_substate_start_io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_remote_device_ready_ncq_substate_start_io_handler(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SAT_PROTOCOL_FPDMA, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*)** %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = call i64 %24(%struct.TYPE_17__* %27, %struct.TYPE_16__* %28, %struct.TYPE_15__* %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @SCI_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %17
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = call i64 @scic_sds_remote_node_context_start_io(i32 %37, %struct.TYPE_15__* %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @SCI_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64 (i32*)*, i64 (i32*)** %48, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 %49(i32* %50)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @scic_sds_remote_device_start_request(%struct.TYPE_16__* %53, %struct.TYPE_15__* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %17
  br label %60

58:                                               ; preds = %2
  %59 = load i64, i64* @SCI_FAILURE_INVALID_STATE, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i64 @scic_sds_remote_node_context_start_io(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @scic_sds_remote_device_start_request(%struct.TYPE_16__*, %struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
