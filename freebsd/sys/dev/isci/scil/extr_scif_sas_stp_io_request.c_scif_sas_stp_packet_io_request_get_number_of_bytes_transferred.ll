; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_packet_io_request_get_number_of_bytes_transferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_io_request.c_scif_sas_stp_packet_io_request_get_number_of_bytes_transferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SCI_IO_FAILURE_RESPONSE_VALID = common dso_local global i64 0, align 8
@SCI_IO_SUCCESS_IO_DONE_EARLY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_sas_stp_packet_io_request_get_number_of_bytes_transferred(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @scif_io_request_get_scic_handle(%struct.TYPE_10__* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @scic_request_get_sci_status(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @SCI_IO_FAILURE_RESPONSE_VALID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %36

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @SCI_IO_SUCCESS_IO_DONE_EARLY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = call i64 @sati_atapi_translate_number_of_bytes_transferred(i32* %22, %struct.TYPE_10__* %23, %struct.TYPE_10__* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @scic_io_request_get_number_of_bytes_transferred(i32 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %28, %18
  br label %35

32:                                               ; preds = %14
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @scic_io_request_get_number_of_bytes_transferred(i32 %33)
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %32, %31
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32 @scif_io_request_get_scic_handle(%struct.TYPE_10__*) #1

declare dso_local i64 @scic_request_get_sci_status(i32) #1

declare dso_local i64 @sati_atapi_translate_number_of_bytes_transferred(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @scic_io_request_get_number_of_bytes_transferred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
