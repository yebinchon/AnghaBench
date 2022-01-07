; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_remote_device.c_scif_sas_stp_remote_device_get_request_by_ncq_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_remote_device.c_scif_sas_stp_remote_device_get_request_by_ncq_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SCIF_SAS_REQUEST = type { %struct.TYPE_6__, %struct.SCIF_SAS_REMOTE_DEVICE* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.SCIF_SAS_REMOTE_DEVICE = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SAT_PROTOCOL_FPDMA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SCIF_SAS_REQUEST* @scif_sas_stp_remote_device_get_request_by_ncq_tag(%struct.SCIF_SAS_REMOTE_DEVICE* %0, i64 %1) #0 {
  %3 = alloca %struct.SCIF_SAS_REMOTE_DEVICE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.SCIF_SAS_REQUEST*, align 8
  %8 = alloca %struct.SCIF_SAS_REQUEST*, align 8
  store %struct.SCIF_SAS_REMOTE_DEVICE* %0, %struct.SCIF_SAS_REMOTE_DEVICE** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.SCIF_SAS_REMOTE_DEVICE*, %struct.SCIF_SAS_REMOTE_DEVICE** %3, align 8
  %10 = getelementptr inbounds %struct.SCIF_SAS_REMOTE_DEVICE, %struct.SCIF_SAS_REMOTE_DEVICE* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  store %struct.SCIF_SAS_REQUEST* null, %struct.SCIF_SAS_REQUEST** %7, align 8
  store %struct.SCIF_SAS_REQUEST* null, %struct.SCIF_SAS_REQUEST** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %47, %2
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @sci_fast_list_get_object(i32* %20)
  %22 = inttoptr i64 %21 to %struct.SCIF_SAS_REQUEST*
  store %struct.SCIF_SAS_REQUEST* %22, %struct.SCIF_SAS_REQUEST** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @sci_fast_list_get_next(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load %struct.SCIF_SAS_REQUEST*, %struct.SCIF_SAS_REQUEST** %7, align 8
  %26 = getelementptr inbounds %struct.SCIF_SAS_REQUEST, %struct.SCIF_SAS_REQUEST* %25, i32 0, i32 1
  %27 = load %struct.SCIF_SAS_REMOTE_DEVICE*, %struct.SCIF_SAS_REMOTE_DEVICE** %26, align 8
  %28 = load %struct.SCIF_SAS_REMOTE_DEVICE*, %struct.SCIF_SAS_REMOTE_DEVICE** %3, align 8
  %29 = icmp eq %struct.SCIF_SAS_REMOTE_DEVICE* %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %19
  %31 = load %struct.SCIF_SAS_REQUEST*, %struct.SCIF_SAS_REQUEST** %7, align 8
  %32 = getelementptr inbounds %struct.SCIF_SAS_REQUEST, %struct.SCIF_SAS_REQUEST* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SAT_PROTOCOL_FPDMA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.SCIF_SAS_REQUEST*, %struct.SCIF_SAS_REQUEST** %7, align 8
  %40 = getelementptr inbounds %struct.SCIF_SAS_REQUEST, %struct.SCIF_SAS_REQUEST* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load %struct.SCIF_SAS_REQUEST*, %struct.SCIF_SAS_REQUEST** %7, align 8
  store %struct.SCIF_SAS_REQUEST* %46, %struct.SCIF_SAS_REQUEST** %8, align 8
  br label %47

47:                                               ; preds = %45, %38, %30, %19
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.SCIF_SAS_REQUEST*, %struct.SCIF_SAS_REQUEST** %8, align 8
  ret %struct.SCIF_SAS_REQUEST* %49
}

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32* @sci_fast_list_get_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
