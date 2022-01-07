; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_read_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i64, i64 }
%struct.g_raid3_metadata = type { i64, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@G_RAID3_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@G_RAID3_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Kernel module is too old to handle metadata from %s.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"MD5 metadata hash mismatch for provider %s.\00", align 1
@MAXPHYS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"The blocksize is too big.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_raid3_read_metadata(%struct.g_consumer* %0, %struct.g_raid3_metadata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_raid3_metadata*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.g_raid3_metadata* %1, %struct.g_raid3_metadata** %5, align 8
  %9 = call i32 (...) @g_topology_assert()
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = call i32 @g_access(%struct.g_consumer* %10, i32 1, i32 0, i32 0)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %6, align 8
  %20 = call i32 (...) @g_topology_unlock()
  %21 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32* @g_read_data(%struct.g_consumer* %21, i64 %28, i64 %31, i32* %8)
  store i32* %32, i32** %7, align 8
  %33 = call i32 (...) @g_topology_lock()
  %34 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %35 = call i32 @g_access(%struct.g_consumer* %34, i32 -1, i32 0, i32 0)
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %16
  %39 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %40 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %39, i32 0, i32 0
  %41 = load %struct.g_provider*, %struct.g_provider** %40, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %96

47:                                               ; preds = %16
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %50 = call i32 @raid3_metadata_decode(i32* %48, %struct.g_raid3_metadata* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @g_free(i32* %51)
  %53 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %54 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @G_RAID3_MAGIC, align 4
  %57 = call i64 @strcmp(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %96

61:                                               ; preds = %47
  %62 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %63 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @G_RAID3_VERSION, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %69 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %68, i32 0, i32 0
  %70 = load %struct.g_provider*, %struct.g_provider** %69, align 8
  %71 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %3, align 4
  br label %96

75:                                               ; preds = %61
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %80 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %79, i32 0, i32 0
  %81 = load %struct.g_provider*, %struct.g_provider** %80, align 8
  %82 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %96

86:                                               ; preds = %75
  %87 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %5, align 8
  %88 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MAXPHYS, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = call i32 (i32, i8*, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %92, %78, %67, %59, %38, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i64, i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @raid3_metadata_decode(i32*, %struct.g_raid3_metadata*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
