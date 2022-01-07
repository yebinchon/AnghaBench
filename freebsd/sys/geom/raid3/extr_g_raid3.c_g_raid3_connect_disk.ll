; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_connect_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_connect_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { %struct.g_consumer*, %struct.TYPE_2__* }
%struct.g_consumer = type { i64, %struct.g_raid3_disk* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Disk already connected (device %s).\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot open consumer %s (error=%d).\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Disk %s connected.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_disk*, %struct.g_provider*)* @g_raid3_connect_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_connect_disk(%struct.g_raid3_disk* %0, %struct.g_provider* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid3_disk*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i32, align 4
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %4, align 8
  store %struct.g_provider* %1, %struct.g_provider** %5, align 8
  %8 = call i32 (...) @g_topology_assert_not()
  %9 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %10 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %9, i32 0, i32 0
  %11 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %12 = icmp eq %struct.g_consumer* %11, null
  %13 = zext i1 %12 to i32
  %14 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %15 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %13, i8* %20)
  %22 = call i32 (...) @g_topology_lock()
  %23 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %24 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.g_consumer* @g_new_consumer(i32 %27)
  store %struct.g_consumer* %28, %struct.g_consumer** %6, align 8
  %29 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %30 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %31 = call i32 @g_attach(%struct.g_consumer* %29, %struct.g_provider* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %36 = call i32 @g_destroy_consumer(%struct.g_consumer* %35)
  %37 = call i32 (...) @g_topology_unlock()
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %2
  %40 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %41 = call i32 @g_access(%struct.g_consumer* %40, i32 1, i32 1, i32 1)
  store i32 %41, i32* %7, align 4
  %42 = call i32 (...) @g_topology_unlock()
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %47 = call i32 @g_detach(%struct.g_consumer* %46)
  %48 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %49 = call i32 @g_destroy_consumer(%struct.g_consumer* %48)
  %50 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %51 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %39
  %57 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %58 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %59 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %58, i32 0, i32 0
  store %struct.g_consumer* %57, %struct.g_consumer** %59, align 8
  %60 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %61 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %62 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %61, i32 0, i32 0
  %63 = load %struct.g_consumer*, %struct.g_consumer** %62, align 8
  %64 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %63, i32 0, i32 1
  store %struct.g_raid3_disk* %60, %struct.g_raid3_disk** %64, align 8
  %65 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %66 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %65, i32 0, i32 0
  %67 = load %struct.g_consumer*, %struct.g_consumer** %66, align 8
  %68 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %70 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %69)
  %71 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %56, %45, %34
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_consumer* @g_new_consumer(i32) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
