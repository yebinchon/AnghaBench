; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_gone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i32, i64, %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.g_provider = type { i32 }

@mtxpool_sleep = common dso_local global i32 0, align 4
@DISK_INIT_DONE = common dso_local global i64 0, align 8
@provider = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"geom %p has more than one provider\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_gone(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_provider*, align 8
  store %struct.disk* %0, %struct.disk** %2, align 8
  %5 = load i32, i32* @mtxpool_sleep, align 4
  %6 = load %struct.disk*, %struct.disk** %2, align 8
  %7 = call i32 @mtx_pool_lock(i32 %5, %struct.disk* %6)
  %8 = load %struct.disk*, %struct.disk** %2, align 8
  %9 = getelementptr inbounds %struct.disk, %struct.disk* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.disk*, %struct.disk** %2, align 8
  %11 = getelementptr inbounds %struct.disk, %struct.disk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DISK_INIT_DONE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @mtxpool_sleep, align 4
  %17 = load %struct.disk*, %struct.disk** %2, align 8
  %18 = call i32 @mtx_pool_unlock(i32 %16, %struct.disk* %17)
  br label %47

19:                                               ; preds = %1
  %20 = load i32, i32* @mtxpool_sleep, align 4
  %21 = load %struct.disk*, %struct.disk** %2, align 8
  %22 = call i32 @mtx_pool_unlock(i32 %20, %struct.disk* %21)
  %23 = load %struct.disk*, %struct.disk** %2, align 8
  %24 = getelementptr inbounds %struct.disk, %struct.disk* %23, i32 0, i32 2
  %25 = load %struct.g_geom*, %struct.g_geom** %24, align 8
  store %struct.g_geom* %25, %struct.g_geom** %3, align 8
  %26 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %27 = icmp ne %struct.g_geom* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %30 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %29, i32 0, i32 0
  %31 = call %struct.g_provider* @LIST_FIRST(i32* %30)
  store %struct.g_provider* %31, %struct.g_provider** %4, align 8
  %32 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %33 = icmp ne %struct.g_provider* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %36 = load i32, i32* @provider, align 4
  %37 = call i32* @LIST_NEXT(%struct.g_provider* %35, i32 %36)
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %41 = bitcast %struct.g_geom* %40 to i8*
  %42 = call i32 @KASSERT(i32 %39, i8* %41)
  %43 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %44 = load i32, i32* @ENXIO, align 4
  %45 = call i32 @g_wither_provider(%struct.g_provider* %43, i32 %44)
  br label %46

46:                                               ; preds = %34, %28
  br label %47

47:                                               ; preds = %15, %46, %19
  ret void
}

declare dso_local i32 @mtx_pool_lock(i32, %struct.disk*) #1

declare dso_local i32 @mtx_pool_unlock(i32, %struct.disk*) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @LIST_NEXT(%struct.g_provider*, i32) #1

declare dso_local i32 @g_wither_provider(%struct.g_provider*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
