; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_els_abort_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_els_abort_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32, %struct.TYPE_14__* }

@.str = private unnamed_addr constant [22 x i8] c"els no longer active\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@OCS_IO_TYPE_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"abort_els\00", align 1
@ocs_els_abort_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ocs_scsi_io_dispatch failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*, i32)* @ocs_els_abort_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @ocs_els_abort_io(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = call i32 @ocs_assert(%struct.TYPE_14__* %10, i32* null)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = call i32 @ocs_assert(%struct.TYPE_14__* %14, i32* null)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = call i32 @ocs_assert(%struct.TYPE_14__* %20, i32* null)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %6, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 10
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = call i32 @ocs_assert(%struct.TYPE_14__* %29, i32* null)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 10
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %7, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = call i64 @ocs_ref_get_unless_zero(i32* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = call i32 @ocs_log_debug(%struct.TYPE_14__* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %102

41:                                               ; preds = %2
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = call %struct.TYPE_14__* @ocs_io_alloc(%struct.TYPE_14__* %42)
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = icmp eq %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 9
  %49 = call i32 @ocs_atomic_add_return(i32* %48, i32 1)
  br label %93

50:                                               ; preds = %41
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_14__*
  %58 = call i32 @ocs_assert(%struct.TYPE_14__* %57, i32* null)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 7
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %66, align 8
  %67 = load i32, i32* @TRUE, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @OCS_IO_TYPE_ABORT, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = load i32, i32* @ocs_els_abort_cb, align 4
  %83 = call i32 @ocs_scsi_io_dispatch_abort(%struct.TYPE_14__* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %50
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @ocs_log_err(%struct.TYPE_14__* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = call i32 @ocs_io_free(%struct.TYPE_14__* %89, %struct.TYPE_14__* %90)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %92

92:                                               ; preds = %85, %50
  br label %93

93:                                               ; preds = %92, %46
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = icmp eq %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = call i32 @ocs_ref_put(i32* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %3, align 8
  br label %102

102:                                              ; preds = %100, %38
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %103
}

declare dso_local i32 @ocs_assert(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @ocs_ref_get_unless_zero(i32*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_14__* @ocs_io_alloc(%struct.TYPE_14__*) #1

declare dso_local i32 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i32 @ocs_scsi_io_dispatch_abort(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @ocs_io_free(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ocs_ref_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
