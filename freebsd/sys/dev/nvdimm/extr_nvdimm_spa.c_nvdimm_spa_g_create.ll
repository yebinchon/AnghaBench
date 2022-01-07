; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_spa* }
%struct.g_spa = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.nvdimm_spa_dev* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nvdimm_spa_dev = type { i32 }

@M_NVDIMM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"spag\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"spagst\00", align 1
@nvdimm_spa_g_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"g_spa\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"NVDIMM %s cannot create geom worker, error %d\0A\00", align 1
@nvdimm_spa_g_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@G_PF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_PF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@G_PF_ACCEPT_UNMAPPED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"spa\00", align 1
@DEVSTAT_ALL_SUPPORTED = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_DIRECT = common dso_local global i32 0, align 4
@DEVSTAT_PRIORITY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_geom* (%struct.nvdimm_spa_dev*, i8*)* @nvdimm_spa_g_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_geom* @nvdimm_spa_g_create(%struct.nvdimm_spa_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.nvdimm_spa_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_spa*, align 8
  %7 = alloca i32, align 4
  store %struct.nvdimm_spa_dev* %0, %struct.nvdimm_spa_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.g_geom* null, %struct.g_geom** %5, align 8
  %8 = load i32, i32* @M_NVDIMM, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.g_spa* @malloc(i32 48, i32 %8, i32 %11)
  store %struct.g_spa* %12, %struct.g_spa** %6, align 8
  %13 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %14 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %15 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %14, i32 0, i32 8
  store %struct.nvdimm_spa_dev* %13, %struct.nvdimm_spa_dev** %15, align 8
  %16 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %17 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %16, i32 0, i32 7
  %18 = call i32 @bioq_init(i32* %17)
  %19 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %20 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %19, i32 0, i32 5
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %21)
  %23 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %24 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %23, i32 0, i32 4
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %25)
  %27 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %28 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %30 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @nvdimm_spa_g_thread, align 4
  %32 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %33 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %34 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %33, i32 0, i32 6
  %35 = call i32 @kproc_create(i32 %31, %struct.g_spa* %32, i32* %34, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %2
  %39 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %40 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %39, i32 0, i32 5
  %41 = call i32 @mtx_destroy(i32* %40)
  %42 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %43 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %42, i32 0, i32 4
  %44 = call i32 @mtx_destroy(i32* %43)
  %45 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %46 = load i32, i32* @M_NVDIMM, align 4
  %47 = call i32 @free(%struct.g_spa* %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %49)
  br label %98

51:                                               ; preds = %2
  %52 = call i32 (...) @g_topology_lock()
  %53 = load i8*, i8** %4, align 8
  %54 = call %struct.g_geom* @g_new_geomf(i32* @nvdimm_spa_g_class, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  store %struct.g_geom* %54, %struct.g_geom** %5, align 8
  %55 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %56 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %57 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %56, i32 0, i32 0
  store %struct.g_spa* %55, %struct.g_spa** %57, align 8
  %58 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call %struct.TYPE_3__* @g_new_providerf(%struct.g_geom* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %62 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %61, i32 0, i32 3
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %62, align 8
  %63 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %3, align 8
  %64 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %67 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @DEV_BSIZE, align 4
  %71 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %72 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @G_PF_DIRECT_SEND, align 4
  %76 = load i32, i32* @G_PF_DIRECT_RECEIVE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %81 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %79
  store i32 %85, i32* %83, align 4
  %86 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %87 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @g_error_provider(%struct.TYPE_3__* %88, i32 0)
  %90 = load i32, i32* @DEV_BSIZE, align 4
  %91 = load i32, i32* @DEVSTAT_ALL_SUPPORTED, align 4
  %92 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %93 = load i32, i32* @DEVSTAT_PRIORITY_MAX, align 4
  %94 = call i32 @devstat_new_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.g_spa*, %struct.g_spa** %6, align 8
  %96 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = call i32 (...) @g_topology_unlock()
  br label %98

98:                                               ; preds = %51, %38
  %99 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  ret %struct.g_geom* %99
}

declare dso_local %struct.g_spa* @malloc(i32, i32, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.g_spa*, i32*, i32, i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.g_spa*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_geom* @g_new_geomf(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @g_new_providerf(%struct.g_geom*, i8*, i8*) #1

declare dso_local i32 @g_error_provider(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @devstat_new_entry(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
