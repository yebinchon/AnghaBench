; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_destroy_geom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_destroy_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { %struct.ccd_s*, i32, i32 }
%struct.ccd_s = type { i32 }
%struct.g_provider = type { i64, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s is open(r%dw%de%d)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, %struct.g_class*, %struct.g_geom*)* @g_ccd_destroy_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_ccd_destroy_geom(%struct.gctl_req* %0, %struct.g_class* %1, %struct.g_geom* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca %struct.g_class*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca %struct.ccd_s*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %5, align 8
  store %struct.g_class* %1, %struct.g_class** %6, align 8
  store %struct.g_geom* %2, %struct.g_geom** %7, align 8
  %10 = call i32 (...) @g_topology_assert()
  %11 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %12 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %11, i32 0, i32 0
  %13 = load %struct.ccd_s*, %struct.ccd_s** %12, align 8
  store %struct.ccd_s* %13, %struct.ccd_s** %9, align 8
  %14 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 2
  %16 = call %struct.g_provider* @LIST_FIRST(i32* %15)
  store %struct.g_provider* %16, %struct.g_provider** %8, align 8
  %17 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %18 = icmp eq %struct.ccd_s* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %21 = icmp eq %struct.g_provider* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @EBUSY, align 4
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %19
  %25 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34, %29, %24
  %40 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %41 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %42 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %45 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %51 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %46, i64 %49, i64 %52)
  %54 = load i32, i32* @EBUSY, align 4
  store i32 %54, i32* %4, align 4
  br label %63

55:                                               ; preds = %34
  %56 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %57 = call i32 @g_ccd_freesc(%struct.ccd_s* %56)
  %58 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %59 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %58, i32 0, i32 0
  store %struct.ccd_s* null, %struct.ccd_s** %59, align 8
  %60 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %61 = load i32, i32* @ENXIO, align 4
  %62 = call i32 @g_wither_geom(%struct.g_geom* %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %39, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i32, i64, i64, i64) #1

declare dso_local i32 @g_ccd_freesc(%struct.ccd_s*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
