; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_write_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i64, i64 }
%struct.g_cache_metadata = type { i32 }

@M_GCACHE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.g_cache_metadata*)* @g_cache_write_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_cache_write_metadata(%struct.g_consumer* %0, %struct.g_cache_metadata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_cache_metadata*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.g_cache_metadata* %1, %struct.g_cache_metadata** %5, align 8
  %9 = call i32 (...) @g_topology_assert()
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = call i32 @g_access(%struct.g_consumer* %10, i32 0, i32 1, i32 0)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %6, align 8
  %20 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %21 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @M_GCACHE, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call i32* @malloc(i64 %22, i32 %23, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load %struct.g_cache_metadata*, %struct.g_cache_metadata** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @cache_metadata_encode(%struct.g_cache_metadata* %28, i32* %29)
  %31 = call i32 (...) @g_topology_unlock()
  %32 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %33 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @g_write_data(%struct.g_consumer* %32, i64 %39, i32* %40, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = call i32 (...) @g_topology_lock()
  %46 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %47 = call i32 @g_access(%struct.g_consumer* %46, i32 0, i32 -1, i32 0)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @M_GCACHE, align 4
  %50 = call i32 @free(i32* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %16, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @cache_metadata_encode(%struct.g_cache_metadata*, i32*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i32*, i64) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
