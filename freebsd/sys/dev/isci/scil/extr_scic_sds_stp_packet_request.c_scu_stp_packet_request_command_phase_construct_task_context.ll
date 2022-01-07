; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_packet_request.c_scu_stp_packet_request_command_phase_construct_task_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_packet_request.c_scu_stp_packet_request_command_phase_construct_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@SCI_IO_REQUEST_DATA_OUT = common dso_local global i64 0, align 8
@SCU_TASK_TYPE_PACKET_DMA_OUT = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_PACKET_DMA_IN = common dso_local global i32 0, align 4
@SATA_FIS_TYPE_DATA = common dso_local global i32 0, align 4
@SCSI_FIXED_SENSE_DATA_BASE_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scu_stp_packet_request_command_phase_construct_task_context(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = bitcast %struct.TYPE_17__* %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %7, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @scic_cb_io_request_get_data_direction(i32 %12)
  %14 = load i64, i64* @SCI_IO_REQUEST_DATA_OUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @SCU_TASK_TYPE_PACKET_DMA_OUT, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @SCU_TASK_TYPE_PACKET_DMA_IN, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = call i32 @memset(%struct.TYPE_11__* %31, i32 0, i32 4)
  %33 = load i32, i32* @SATA_FIS_TYPE_DATA, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = call i32 @memset(%struct.TYPE_11__* %40, i32 0, i32 4)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @scic_cb_stp_packet_io_request_get_cdb_address(i32 %44)
  store i8* %45, i8** %5, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @scic_cb_stp_packet_io_request_get_cdb_length(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = bitcast %struct.TYPE_11__* %52 to i32*
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @memcpy(i32* %54, i8* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MAX(i32 %58, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = srem i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %28
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %69, 4
  br label %75

71:                                               ; preds = %28
  %72 = load i32, i32* %6, align 4
  %73 = sdiv i32 %72, 4
  %74 = add nsw i32 %73, 1
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i32 [ %70, %68 ], [ %74, %71 ]
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @scic_cb_request_is_initial_construction(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @scic_cb_io_request_get_transfer_length(i32 %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  br label %102

95:                                               ; preds = %75
  %96 = load i64, i64* @SCSI_FIXED_SENSE_DATA_BASE_LENGTH, align 8
  %97 = add nsw i64 %96, 2
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = call i32 @scic_sds_stp_packet_internal_request_sense_build_sgl(%struct.TYPE_17__* %100)
  br label %102

102:                                              ; preds = %95, %88
  ret void
}

declare dso_local i64 @scic_cb_io_request_get_data_direction(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @scic_cb_stp_packet_io_request_get_cdb_address(i32) #1

declare dso_local i32 @scic_cb_stp_packet_io_request_get_cdb_length(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @scic_cb_request_is_initial_construction(i32) #1

declare dso_local i64 @scic_cb_io_request_get_transfer_length(i32) #1

declare dso_local i32 @scic_sds_stp_packet_internal_request_sense_build_sgl(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
