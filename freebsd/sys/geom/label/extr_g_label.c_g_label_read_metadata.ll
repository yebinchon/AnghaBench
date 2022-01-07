; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_read_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i64, i64 }
%struct.g_label_metadata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.g_label_metadata*)* @g_label_read_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_label_read_metadata(%struct.g_consumer* %0, %struct.g_label_metadata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_label_metadata*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.g_label_metadata* %1, %struct.g_label_metadata** %5, align 8
  %9 = call i32 (...) @g_topology_assert()
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 0
  %12 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  store %struct.g_provider* %12, %struct.g_provider** %6, align 8
  %13 = call i32 (...) @g_topology_unlock()
  %14 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %15 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32* @g_read_data(%struct.g_consumer* %14, i64 %21, i64 %24, i32* %8)
  store i32* %25, i32** %7, align 8
  %26 = call i32 (...) @g_topology_lock()
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.g_label_metadata*, %struct.g_label_metadata** %5, align 8
  %34 = call i32 @label_metadata_decode(i32* %32, %struct.g_label_metadata* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @g_free(i32* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i64, i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @label_metadata_decode(i32*, %struct.g_label_metadata*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
