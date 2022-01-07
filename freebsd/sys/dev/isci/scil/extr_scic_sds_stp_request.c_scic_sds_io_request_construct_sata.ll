; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_io_request_construct_sata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_io_request_construct_sata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_STP_PROTOCOL = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_FPDMAQ_READ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_DMA_IN = common dso_local global i32 0, align 4
@scic_sds_stp_request_started_udma_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REQUEST_STARTED_UDMA_AWAIT_TC_COMPLETION_SUBSTATE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"SCIC IO Request 0x%x received un-handled SAT Protocol %d.\0A\00", align 1
@SCI_FAILURE = common dso_local global i64 0, align 8
@SCI_BASE_REQUEST_STATE_CONSTRUCTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_sds_io_request_construct_sata(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32, i32* @SCIC_STP_PROTOCOL, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %80 [
    i32 140, label %22
    i32 129, label %35
    i32 128, label %35
    i32 133, label %58
    i32 132, label %58
    i32 145, label %63
    i32 130, label %63
    i32 139, label %66
    i32 136, label %69
    i32 138, label %69
    i32 137, label %69
    i32 135, label %69
    i32 134, label %69
    i32 141, label %79
    i32 142, label %79
    i32 144, label %79
    i32 143, label %79
    i32 131, label %79
  ]

22:                                               ; preds = %6
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load i32, i32* @SCU_TASK_TYPE_FPDMAQ_READ, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @scic_sds_stp_optimized_request_construct(%struct.TYPE_14__* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = call i32 @scic_sds_request_build_sgl(%struct.TYPE_14__* %32)
  br label %34

34:                                               ; preds = %31, %22
  br label %88

35:                                               ; preds = %6, %6
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = call i32 @scic_sds_stp_non_ncq_request_construct(%struct.TYPE_14__* %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = load i32, i32* @SCU_TASK_TYPE_DMA_IN, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @scic_sds_stp_optimized_request_construct(%struct.TYPE_14__* %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = call i32 @scic_sds_request_build_sgl(%struct.TYPE_14__* %47)
  br label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* @scic_sds_stp_request_started_udma_substate_table, align 4
  %56 = load i32, i32* @SCIC_SDS_STP_REQUEST_STARTED_UDMA_AWAIT_TC_COMPLETION_SUBSTATE, align 4
  %57 = call i32 @sci_base_state_machine_construct(i32* %51, i32* %54, i32 %55, i32 %56)
  br label %88

58:                                               ; preds = %6, %6
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @scic_sds_stp_pio_request_construct(%struct.TYPE_14__* %59, i32 %60, i32 %61)
  store i64 %62, i64* %13, align 8
  br label %88

63:                                               ; preds = %6, %6
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = call i64 @scic_sds_stp_soft_reset_request_construct(%struct.TYPE_14__* %64)
  store i64 %65, i64* %13, align 8
  br label %88

66:                                               ; preds = %6
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = call i64 @scic_sds_stp_non_data_request_construct(%struct.TYPE_14__* %67)
  store i64 %68, i64* %13, align 8
  br label %88

69:                                               ; preds = %6, %6, %6, %6, %6
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = call i64 @scic_sds_stp_packet_request_construct(%struct.TYPE_14__* %70)
  store i64 %71, i64* %13, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = call i32 @scic_sds_request_build_sgl(%struct.TYPE_14__* %76)
  br label %78

78:                                               ; preds = %75, %69
  br label %88

79:                                               ; preds = %6, %6, %6, %6, %6
  br label %80

80:                                               ; preds = %6, %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = call i32 @sci_base_object_get_logger(%struct.TYPE_14__* %81)
  %83 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @SCIC_LOG_ERROR(i32 %85)
  %87 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %80, %78, %66, %63, %58, %49, %34
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @SCI_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = call i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_14__* %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* @SCI_BASE_REQUEST_STATE_CONSTRUCTED, align 4
  %99 = call i32 @sci_base_state_machine_change_state(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %88
  %101 = load i64, i64* %13, align 8
  ret i64 %101
}

declare dso_local i32 @scic_sds_stp_optimized_request_construct(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @scic_sds_request_build_sgl(%struct.TYPE_14__*) #1

declare dso_local i32 @scic_sds_stp_non_ncq_request_construct(%struct.TYPE_14__*) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, i32*, i32, i32) #1

declare dso_local i64 @scic_sds_stp_pio_request_construct(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @scic_sds_stp_soft_reset_request_construct(%struct.TYPE_14__*) #1

declare dso_local i64 @scic_sds_stp_non_data_request_construct(%struct.TYPE_14__*) #1

declare dso_local i64 @scic_sds_stp_packet_request_construct(%struct.TYPE_14__*) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_14__*) #1

declare dso_local i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_14__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
