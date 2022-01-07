; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_abort_io_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_abort_io_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_hw_io_s = type { i32 }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_12__*, i32, i32*, i32, i32)*, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }

@OCS_SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"status %d ext %d\0A\00", align 1
@SLI4_FC_LOCAL_REJECT_ABORT_REQUESTED = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_ABORTED = common dso_local global i32 0, align 4
@SLI4_FC_LOCAL_REJECT_NO_XRI = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_NO_IO = common dso_local global i32 0, align 4
@SLI4_FC_LOCAL_REJECT_ABORT_IN_PROGRESS = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_ABORT_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unhandled local reject 0x%x/0x%x\0A\00", align 1
@OCS_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocs_hw_io_s*, i32*, i32, i32, i32, i8*)* @ocs_scsi_abort_io_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_scsi_abort_io_cb(%struct.ocs_hw_io_s* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.ocs_hw_io_s*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  store %struct.ocs_hw_io_s* %0, %struct.ocs_hw_io_s** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %13, align 8
  %18 = load i32, i32* @OCS_SCSI_STATUS_GOOD, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %20 = call i32 @ocs_assert(%struct.TYPE_12__* %19, i32 -1)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %22 = call %struct.TYPE_12__* @ocs_io_busy(%struct.TYPE_12__* %21)
  %23 = call i32 @ocs_assert(%struct.TYPE_12__* %22, i32 -1)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = call i32 @ocs_assert(%struct.TYPE_12__* %26, i32 -1)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = call i32 @ocs_assert(%struct.TYPE_12__* %30, i32 -1)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %14, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ocs_log_debug(%struct.TYPE_12__* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = call i32 @ocs_ref_put(i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %45 = call i32 @ocs_scsi_io_free_ovfl(%struct.TYPE_12__* %44)
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %76 [
    i32 128, label %47
    i32 129, label %49
  ]

47:                                               ; preds = %6
  %48 = load i32, i32* @OCS_SCSI_STATUS_GOOD, align 4
  store i32 %48, i32* %15, align 4
  br label %78

49:                                               ; preds = %6
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @SLI4_FC_LOCAL_REJECT_ABORT_REQUESTED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @OCS_SCSI_STATUS_ABORTED, align 4
  store i32 %54, i32* %15, align 4
  br label %75

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SLI4_FC_LOCAL_REJECT_NO_XRI, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @OCS_SCSI_STATUS_NO_IO, align 4
  store i32 %60, i32* %15, align 4
  br label %74

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SLI4_FC_LOCAL_REJECT_ABORT_IN_PROGRESS, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @OCS_SCSI_STATUS_ABORT_IN_PROGRESS, align 4
  store i32 %66, i32* %15, align 4
  br label %73

67:                                               ; preds = %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @ocs_log_test(%struct.TYPE_12__* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* @OCS_SCSI_STATUS_ERROR, align 4
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %67, %65
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %53
  br label %78

76:                                               ; preds = %6
  %77 = load i32, i32* @OCS_SCSI_STATUS_ERROR, align 4
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %76, %75, %47
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_12__*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32*, i32, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_12__*, i32, i32*, i32, i32)* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_12__*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32*, i32, i32)** %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %86(%struct.TYPE_12__* %87, i32 %88, i32* null, i32 0, i32 %91)
  br label %96

93:                                               ; preds = %78
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = call i32 @ocs_scsi_io_free(%struct.TYPE_12__* %94)
  br label %96

96:                                               ; preds = %93, %83
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %98 = call i32 @ocs_scsi_check_pending(%struct.TYPE_12__* %97)
  ret i32 0
}

declare dso_local i32 @ocs_assert(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @ocs_io_busy(%struct.TYPE_12__*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @ocs_ref_put(i32*) #1

declare dso_local i32 @ocs_scsi_io_free_ovfl(%struct.TYPE_12__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @ocs_scsi_io_free(%struct.TYPE_12__*) #1

declare dso_local i32 @ocs_scsi_check_pending(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
