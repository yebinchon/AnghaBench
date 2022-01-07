; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_destroy_geom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_destroy_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { %struct.g_spa* }
%struct.g_spa = type { i32, i32, i32, i32*, i32*, i32, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"spa_e\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_NVDIMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, %struct.g_class*, %struct.g_geom*)* @nvdimm_spa_g_destroy_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_spa_g_destroy_geom(%struct.gctl_req* %0, %struct.g_class* %1, %struct.g_geom* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca %struct.g_geom*, align 8
  %7 = alloca %struct.g_spa*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store %struct.g_geom* %2, %struct.g_geom** %6, align 8
  %8 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %9 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %8, i32 0, i32 0
  %10 = load %struct.g_spa*, %struct.g_spa** %9, align 8
  store %struct.g_spa* %10, %struct.g_spa** %7, align 8
  %11 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %12 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %11, i32 0, i32 2
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %15 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %17 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %16, i32 0, i32 5
  %18 = call i32 @wakeup(i32* %17)
  br label %19

19:                                               ; preds = %25, %3
  %20 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %21 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %27 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %26, i32 0, i32 5
  %28 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %29 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %28, i32 0, i32 2
  %30 = load i32, i32* @PRIBIO, align 4
  %31 = call i32 @msleep(i32* %27, i32* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %19

32:                                               ; preds = %19
  %33 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %34 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %33, i32 0, i32 2
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = call i32 (...) @g_topology_assert()
  %37 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %38 = load i32, i32* @ENXIO, align 4
  %39 = call i32 @g_wither_geom(%struct.g_geom* %37, i32 %38)
  %40 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %41 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %43 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %48 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @devstat_remove_entry(i32* %49)
  %51 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %52 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %32
  %54 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %55 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %54, i32 0, i32 2
  %56 = call i32 @mtx_destroy(i32* %55)
  %57 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %58 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %57, i32 0, i32 1
  %59 = call i32 @mtx_destroy(i32* %58)
  %60 = load %struct.g_spa*, %struct.g_spa** %7, align 8
  %61 = load i32, i32* @M_NVDIMM, align 4
  %62 = call i32 @free(%struct.g_spa* %60, i32 %61)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

declare dso_local i32 @devstat_remove_entry(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.g_spa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
