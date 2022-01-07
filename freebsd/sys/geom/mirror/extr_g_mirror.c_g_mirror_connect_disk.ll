; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_connect_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_connect_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { %struct.g_consumer*, %struct.TYPE_2__* }
%struct.g_consumer = type { i64, %struct.g_mirror_disk*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Disk already connected (device %s).\00", align 1
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot open consumer %s (error=%d).\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Disk %s connected.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_mirror_disk*, %struct.g_provider*)* @g_mirror_connect_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mirror_connect_disk(%struct.g_mirror_disk* %0, %struct.g_provider* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_mirror_disk*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i32, align 4
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %4, align 8
  store %struct.g_provider* %1, %struct.g_provider** %5, align 8
  %8 = call i32 (...) @g_topology_assert_not()
  %9 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %10 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %9, i32 0, i32 0
  %11 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %12 = icmp eq %struct.g_consumer* %11, null
  %13 = zext i1 %12 to i32
  %14 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %15 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %13, i8* %20)
  %22 = call i32 (...) @g_topology_lock()
  %23 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %24 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.g_consumer* @g_new_consumer(i32 %27)
  store %struct.g_consumer* %28, %struct.g_consumer** %6, align 8
  %29 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %30 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %31 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %35 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %36 = call i32 @g_attach(%struct.g_consumer* %34, %struct.g_provider* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %41 = call i32 @g_destroy_consumer(%struct.g_consumer* %40)
  %42 = call i32 (...) @g_topology_unlock()
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %78

44:                                               ; preds = %2
  %45 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %46 = call i32 @g_access(%struct.g_consumer* %45, i32 1, i32 1, i32 1)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %51 = call i32 @g_detach(%struct.g_consumer* %50)
  %52 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %53 = call i32 @g_destroy_consumer(%struct.g_consumer* %52)
  %54 = call i32 (...) @g_topology_unlock()
  %55 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %56 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %78

61:                                               ; preds = %44
  %62 = call i32 (...) @g_topology_unlock()
  %63 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %64 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %65 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %64, i32 0, i32 0
  store %struct.g_consumer* %63, %struct.g_consumer** %65, align 8
  %66 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %67 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %68 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %67, i32 0, i32 0
  %69 = load %struct.g_consumer*, %struct.g_consumer** %68, align 8
  %70 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %69, i32 0, i32 1
  store %struct.g_mirror_disk* %66, %struct.g_mirror_disk** %70, align 8
  %71 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %72 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %71, i32 0, i32 0
  %73 = load %struct.g_consumer*, %struct.g_consumer** %72, align 8
  %74 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %76 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %75)
  %77 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %61, %49, %39
  %79 = load i32, i32* %3, align 4
  ret i32 %79
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

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
