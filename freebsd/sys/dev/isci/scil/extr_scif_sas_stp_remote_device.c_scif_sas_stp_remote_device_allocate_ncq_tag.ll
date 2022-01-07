; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_remote_device.c_scif_sas_stp_remote_device_allocate_ncq_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_remote_device.c_scif_sas_stp_remote_device_allocate_ncq_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"scif_sas_stp_remote_device_allocate_ncq_tag(0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"RemoteDevice:0x%x NcqTag:0x%x successful NCQ TAG allocation\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"RemoteDevice:0x%x unable to allocate NCQ TAG\0A\00", align 1
@SCIF_SAS_INVALID_NCQ_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_sas_stp_remote_device_allocate_ncq_tag(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %6)
  %8 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %9 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = ptrtoint %struct.TYPE_10__* %11 to i32
  %13 = call i32 @SCIF_LOG_TRACE(i32 %12)
  br label %14

14:                                               ; preds = %34, %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %24, %30
  br label %32

32:                                               ; preds = %23, %14
  %33 = phi i1 [ false, %14 ], [ %31, %23 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %14

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %40, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %49)
  %51 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %52 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @SCIF_LOG_INFO(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 8
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %2, align 8
  br label %76

66:                                               ; preds = %39
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %67)
  %69 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %70 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = ptrtoint %struct.TYPE_10__* %72 to i32
  %74 = call i32 @SCIF_LOG_INFO(i32 %73)
  %75 = load i64, i64* @SCIF_SAS_INVALID_NCQ_TAG, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %66, %48
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_10__*) #1

declare dso_local i32 @SCIF_LOG_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
