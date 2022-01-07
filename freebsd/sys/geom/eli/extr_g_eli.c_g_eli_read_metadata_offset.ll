; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_read_metadata_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_read_metadata_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_class = type { i32 }
%struct.g_provider = type { i32 }
%struct.g_eli_metadata = type { i32 }
%struct.g_geom = type { i8*, i8*, i32, i32 }
%struct.g_consumer = type { i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"eli:taste\00", align 1
@g_eli_start = common dso_local global i32 0, align 4
@g_std_access = common dso_local global i32 0, align 4
@g_eli_orphan_spoil_assert = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_class*, %struct.g_provider*, i32, %struct.g_eli_metadata*)* @g_eli_read_metadata_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_read_metadata_offset(%struct.g_class* %0, %struct.g_provider* %1, i32 %2, %struct.g_eli_metadata* %3) #0 {
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.g_eli_metadata*, align 8
  %9 = alloca %struct.g_geom*, align 8
  %10 = alloca %struct.g_consumer*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.g_class* %0, %struct.g_class** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.g_eli_metadata* %3, %struct.g_eli_metadata** %8, align 8
  store i32* null, i32** %11, align 8
  %13 = call i32 (...) @g_topology_assert()
  %14 = load %struct.g_class*, %struct.g_class** %5, align 8
  %15 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.g_geom* %15, %struct.g_geom** %9, align 8
  %16 = load i32, i32* @g_eli_start, align 4
  %17 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @g_std_access, align 4
  %20 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %21 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @g_eli_orphan_spoil_assert, align 8
  %23 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %24 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @g_eli_orphan_spoil_assert, align 8
  %26 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %27 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %29 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %28)
  store %struct.g_consumer* %29, %struct.g_consumer** %10, align 8
  %30 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %31 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %32 = call i32 @g_attach(%struct.g_consumer* %30, %struct.g_provider* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %62

36:                                               ; preds = %4
  %37 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %38 = call i32 @g_access(%struct.g_consumer* %37, i32 1, i32 0, i32 0)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %62

42:                                               ; preds = %36
  %43 = call i32 (...) @g_topology_unlock()
  %44 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %47 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @g_read_data(%struct.g_consumer* %44, i32 %45, i32 %48, i32* %12)
  store i32* %49, i32** %11, align 8
  %50 = call i32 (...) @g_topology_lock()
  %51 = load i32*, i32** %11, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %62

54:                                               ; preds = %42
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %8, align 8
  %57 = call i32 @eli_metadata_decode(i32* %55, %struct.g_eli_metadata* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %60, %53, %41, %35
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @g_free(i32* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %70 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %75 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %80 = call i32 @g_access(%struct.g_consumer* %79, i32 -1, i32 0, i32 0)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %83 = call i32 @g_detach(%struct.g_consumer* %82)
  br label %84

84:                                               ; preds = %81, %68
  %85 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %86 = call i32 @g_destroy_consumer(%struct.g_consumer* %85)
  %87 = load %struct.g_geom*, %struct.g_geom** %9, align 8
  %88 = call i32 @g_destroy_geom(%struct.g_geom* %87)
  %89 = load i32, i32* %12, align 4
  ret i32 %89
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @eli_metadata_decode(i32*, %struct.g_eli_metadata*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
