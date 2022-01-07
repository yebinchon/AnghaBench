; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_write_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i64, i64 }
%struct.g_multipath_metadata = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.g_multipath_metadata*)* @g_multipath_write_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_multipath_write_metadata(%struct.g_consumer* %0, %struct.g_multipath_metadata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_multipath_metadata*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.g_multipath_metadata* %1, %struct.g_multipath_metadata** %5, align 8
  %9 = call i32 (...) @g_topology_assert()
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = call i32 @g_access(%struct.g_consumer* %10, i32 1, i32 1, i32 1)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %6, align 8
  %20 = call i32 (...) @g_topology_unlock()
  %21 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call i32* @g_malloc(i64 %23, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load %struct.g_multipath_metadata*, %struct.g_multipath_metadata** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @multipath_metadata_encode(%struct.g_multipath_metadata* %28, i32* %29)
  %31 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %32 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %41 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @g_write_data(%struct.g_consumer* %31, i64 %38, i32* %39, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = call i32 (...) @g_topology_lock()
  %45 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %46 = call i32 @g_access(%struct.g_consumer* %45, i32 -1, i32 -1, i32 -1)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @g_free(i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %16, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32* @g_malloc(i64, i32) #1

declare dso_local i32 @multipath_metadata_encode(%struct.g_multipath_metadata*, i32*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i32*, i64) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
