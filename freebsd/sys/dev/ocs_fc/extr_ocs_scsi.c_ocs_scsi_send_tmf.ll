; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_send_tmf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_send_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i8*, i32, i32, %struct.TYPE_8__*, i32 }

@OCS_SCSI_TMF_ABORT_TASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"command no longer active\0A\00", align 1
@OCS_IO_TYPE_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"abort_task\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ocs_scsi_abort_io_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to dispatch abort\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tmf\00", align 1
@OCS_HW_IO_INITIATOR_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_send_tmf(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %3, i64 %4, i32* %5, i32 %6, i32 %7, i32 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %24 = call i32 @ocs_assert(%struct.TYPE_8__* %23, i32 -1)
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* @OCS_SCSI_TMF_ABORT_TASK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %10
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %30 = call i32 @ocs_assert(%struct.TYPE_8__* %29, i32 -1)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = call i64 @ocs_ref_get_unless_zero(i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = call i32 @scsi_io_printf(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %84

38:                                               ; preds = %28
  %39 = load i32, i32* @OCS_IO_TYPE_ABORT, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %21, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = load i32, i32* @ocs_scsi_abort_io_cb, align 4
  %58 = call i32 @ocs_scsi_io_dispatch_abort(%struct.TYPE_8__* %56, i32 %57)
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %38
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %63 = call i32 @scsi_io_printf(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = call i32 @ocs_ref_put(i32* %65)
  br label %67

67:                                               ; preds = %61, %38
  br label %82

68:                                               ; preds = %10
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* @OCS_HW_IO_INITIATOR_READ, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i64, i64* %16, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i8*, i8** %21, align 8
  %81 = call i32 @ocs_scsi_send_io(i32 %71, i32* %72, %struct.TYPE_8__* %73, i32 %74, i64 %75, i32* null, i32 0, i32* null, i32* %76, i32 %77, i32 %78, i32 0, i32 %79, i8* %80)
  store i32 %81, i32* %22, align 4
  br label %82

82:                                               ; preds = %68, %67
  %83 = load i32, i32* %22, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %82, %35
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local i32 @ocs_assert(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ocs_ref_get_unless_zero(i32*) #1

declare dso_local i32 @scsi_io_printf(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ocs_scsi_io_dispatch_abort(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ocs_ref_put(i32*) #1

declare dso_local i32 @ocs_scsi_send_io(i32, i32*, %struct.TYPE_8__*, i32, i64, i32*, i32, i32*, i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
