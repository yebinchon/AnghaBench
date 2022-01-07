; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_tgt_abort_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_tgt_abort_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i8*, i32, i32, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"command no longer active\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@OCS_IO_TYPE_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tgt_abort\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ocs_target_abort_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_tgt_abort_io(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = call i32 @ocs_assert(%struct.TYPE_11__* %12, i32 -1)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call i32 @ocs_assert(%struct.TYPE_11__* %16, i32 -1)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 11
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = call i32 @ocs_assert(%struct.TYPE_11__* %20, i32 -1)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 11
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 10
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = call i64 @ocs_ref_get_unless_zero(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = call i32 @scsi_io_printf(%struct.TYPE_11__* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %92

35:                                               ; preds = %3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = call %struct.TYPE_11__* @ocs_io_alloc(%struct.TYPE_11__* %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %11, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = icmp eq %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @ocs_atomic_add_return(i32* %42, i32 1)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = call i32 @ocs_ref_put(i32* %45)
  store i32 -1, i32* %4, align 4
  br label %92

47:                                               ; preds = %35
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 9
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_11__*
  %55 = call i32 @ocs_assert(%struct.TYPE_11__* %54, i32 -1)
  %56 = load i32, i32* @TRUE, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 7
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 7
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %63, align 8
  %64 = load i32, i32* @OCS_IO_TYPE_ABORT, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %71, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = load i32, i32* @ocs_target_abort_cb, align 4
  %83 = call i32 @ocs_scsi_io_dispatch_abort(%struct.TYPE_11__* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %47
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = call i32 @ocs_ref_put(i32* %88)
  br label %90

90:                                               ; preds = %86, %47
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %40, %32
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ocs_assert(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @ocs_ref_get_unless_zero(i32*) #1

declare dso_local i32 @scsi_io_printf(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_11__* @ocs_io_alloc(%struct.TYPE_11__*) #1

declare dso_local i32 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i32 @ocs_ref_put(i32*) #1

declare dso_local i32 @ocs_scsi_io_dispatch_abort(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
