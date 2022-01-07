; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_read_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i64, i64 }
%struct.g_concat_metadata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.g_concat_metadata*)* @g_concat_read_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_concat_read_metadata(%struct.g_consumer* %0, %struct.g_concat_metadata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_concat_metadata*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.g_concat_metadata* %1, %struct.g_concat_metadata** %5, align 8
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
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %6, align 8
  %20 = call i32 (...) @g_topology_unlock()
  %21 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32* @g_read_data(%struct.g_consumer* %21, i64 %28, i64 %31, i32* %8)
  store i32* %32, i32** %7, align 8
  %33 = call i32 (...) @g_topology_lock()
  %34 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %35 = call i32 @g_access(%struct.g_consumer* %34, i32 -1, i32 0, i32 0)
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %16
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %16
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.g_concat_metadata*, %struct.g_concat_metadata** %5, align 8
  %43 = call i32 @concat_metadata_decode(i32* %41, %struct.g_concat_metadata* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @g_free(i32* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %38, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i64, i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @concat_metadata_decode(i32*, %struct.g_concat_metadata*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
