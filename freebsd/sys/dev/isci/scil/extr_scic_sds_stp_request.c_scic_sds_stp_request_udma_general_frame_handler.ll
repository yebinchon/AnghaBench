; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_udma_general_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_udma_general_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"scic_sds_stp_pio_request_data_in_await_frame_frame_handler(0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SATA_FIS_TYPE_REGD2H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32)* @scic_sds_stp_request_udma_general_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_request_udma_general_frame_handler(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %8)
  %10 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @SCIC_LOG_TRACE(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = bitcast %struct.TYPE_9__** %6 to i8**
  %20 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %17, i32 %18, i8** %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SCI_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SATA_FIS_TYPE_REGD2H, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = bitcast i32** %7 to i8**
  %37 = call i32 @scic_sds_unsolicited_frame_control_get_buffer(i32* %34, i32 %35, i8** %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = bitcast %struct.TYPE_8__* %38 to %struct.TYPE_7__*
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = bitcast %struct.TYPE_9__* %41 to i32*
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @scic_sds_controller_copy_sata_response(i32* %40, i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %30, %24, %2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_10__* %48, i32 %49)
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_8__*) #1

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_buffer(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_controller_copy_sata_response(i32*, i32*, i32*) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
