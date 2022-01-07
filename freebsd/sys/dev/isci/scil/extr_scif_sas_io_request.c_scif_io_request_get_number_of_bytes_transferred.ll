; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_io_request.c_scif_io_request_get_number_of_bytes_transferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_io_request.c_scif_io_request_get_number_of_bytes_transferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@SCIC_STP_PROTOCOL = common dso_local global i64 0, align 8
@SAT_PROTOCOL_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_io_request_get_number_of_bytes_transferred(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @scif_io_request_get_scic_handle(i64 %9)
  %11 = call i64 @scic_io_request_get_protocol(i32 %10)
  %12 = load i64, i64* @SCIC_STP_PROTOCOL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i64 @sati_get_number_data_bytes_set(%struct.TYPE_9__* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %46

24:                                               ; preds = %14
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SAT_PROTOCOL_PACKET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i64 @scif_sas_stp_packet_io_request_get_number_of_bytes_transferred(%struct.TYPE_8__* %36)
  store i64 %37, i64* %2, align 8
  br label %46

38:                                               ; preds = %24
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @scif_io_request_get_scic_handle(i64 %39)
  %41 = call i64 @scic_io_request_get_number_of_bytes_transferred(i32 %40)
  store i64 %41, i64* %2, align 8
  br label %46

42:                                               ; preds = %1
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @scif_io_request_get_scic_handle(i64 %43)
  %45 = call i64 @scic_io_request_get_number_of_bytes_transferred(i32 %44)
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %42, %38, %35, %22
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @scic_io_request_get_protocol(i32) #1

declare dso_local i32 @scif_io_request_get_scic_handle(i64) #1

declare dso_local i64 @sati_get_number_data_bytes_set(%struct.TYPE_9__*) #1

declare dso_local i64 @scif_sas_stp_packet_io_request_get_number_of_bytes_transferred(%struct.TYPE_8__*) #1

declare dso_local i64 @scic_io_request_get_number_of_bytes_transferred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
