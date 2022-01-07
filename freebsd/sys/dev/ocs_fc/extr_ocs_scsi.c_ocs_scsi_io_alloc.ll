; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_io_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_io_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i8*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, %struct.TYPE_13__* }

@_ocs_scsi_io_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"assertion failed: io->hio is not NULL\0A\00", align 1
@OCS_IO_TYPE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"scsi_io\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @ocs_scsi_io_alloc(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = call i32 @ocs_assert(%struct.TYPE_13__* %9, i32* null)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = call i32 @ocs_assert(%struct.TYPE_13__* %13, i32* null)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = call i32 @ocs_assert(%struct.TYPE_13__* %20, i32* null)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = call i32 @ocs_lock(i32* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = call i32 @ocs_unlock(i32* %34)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %102

36:                                               ; preds = %2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = call %struct.TYPE_14__* @ocs_io_alloc(%struct.TYPE_13__* %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %8, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = icmp eq %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = call i32 @ocs_atomic_add_return(i32* %43, i32 1)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = call i32 @ocs_unlock(i32* %46)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %102

48:                                               ; preds = %36
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 7
  %51 = load i32, i32* @_ocs_scsi_io_free, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = call i32 @ocs_ref_init(i32* %50, i32 %51, %struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call i32 @ocs_log_err(%struct.TYPE_13__* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = call i32 @ocs_unlock(i32* %64)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %102

66:                                               ; preds = %48
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %72, align 8
  %73 = load i32, i32* @OCS_IO_TYPE_IO, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %77, align 8
  %78 = load i32, i32* %5, align 4
  switch i32 %78, label %93 [
    i32 129, label %79
    i32 128, label %86
  ]

79:                                               ; preds = %66
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @FALSE, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %93

86:                                               ; preds = %66
  %87 = load i8*, i8** @FALSE, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @TRUE, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %66, %86, %79
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = call i32 @ocs_list_add_tail(i32* %95, %struct.TYPE_14__* %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = call i32 @ocs_unlock(i32* %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %3, align 8
  br label %102

102:                                              ; preds = %93, %58, %41, %32
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %103
}

declare dso_local i32 @ocs_assert(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local %struct.TYPE_14__* @ocs_io_alloc(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i32 @ocs_ref_init(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
