; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_io_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_io_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i64, i32*, i8*, i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@OCS_IO_TYPE_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_io_dispatch(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ true, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ocs_assert(i32 %26, i32 -1)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OCS_IO_TYPE_ABORT, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ocs_assert(i32 %33, i32 -1)
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ocs_scsi_io_dispatch_hw_io(%struct.TYPE_11__* %43, i32* %46)
  store i32 %47, i32* %3, align 4
  br label %115

48:                                               ; preds = %24
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = call i32 @ocs_lock(i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = call i32 @ocs_list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %83, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = call i32 @ocs_list_add_head(i32* %63, %struct.TYPE_11__* %64)
  br label %71

66:                                               ; preds = %56
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = call i32 @ocs_list_add_tail(i32* %68, %struct.TYPE_11__* %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = call i32 @ocs_unlock(i32* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @ocs_atomic_add_return(i32* %76, i32 1)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = call i32 @ocs_atomic_add_return(i32* %79, i32 1)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = call i32 @ocs_scsi_check_pending(%struct.TYPE_10__* %81)
  store i32 0, i32* %3, align 4
  br label %115

83:                                               ; preds = %48
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = call i32 @ocs_unlock(i32* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32* @ocs_hw_io_alloc(i32* %90)
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %83
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = call i32 @ocs_lock(i32* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = call i32 @ocs_list_add_tail(i32* %99, %struct.TYPE_11__* %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = call i32 @ocs_unlock(i32* %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = call i32 @ocs_atomic_add_return(i32* %106, i32 1)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = call i32 @ocs_atomic_add_return(i32* %109, i32 1)
  store i32 0, i32* %3, align 4
  br label %115

111:                                              ; preds = %83
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @ocs_scsi_io_dispatch_hw_io(%struct.TYPE_11__* %112, i32* %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %94, %71, %42
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @ocs_assert(i32, i32) #1

declare dso_local i32 @ocs_scsi_io_dispatch_hw_io(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_list_empty(i32*) #1

declare dso_local i32 @ocs_list_add_head(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i32 @ocs_scsi_check_pending(%struct.TYPE_10__*) #1

declare dso_local i32* @ocs_hw_io_alloc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
