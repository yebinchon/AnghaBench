; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_new_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_new_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32, %struct.g_geom* }
%struct.g_geom = type { i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@G_GEOM_WITHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"g_new_consumer on WITHERing geom(%s) (class %s)\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"g_new_consumer on geom(%s) (class %s) without orphan\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DEVSTAT_ALL_SUPPORTED = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_DIRECT = common dso_local global i32 0, align 4
@DEVSTAT_PRIORITY_MAX = common dso_local global i32 0, align 4
@consumer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom* %0) #0 {
  %2 = alloca %struct.g_geom*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %2, align 8
  %4 = call i32 (...) @g_topology_assert()
  %5 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %6 = call i32 @G_VALID_GEOM(%struct.g_geom* %5)
  %7 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %8 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @G_GEOM_WITHER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %19 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %14, i8* %24)
  %26 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %27 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %32 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %35 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %30, i8* %40)
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call %struct.g_consumer* @g_malloc(i32 16, i32 %44)
  store %struct.g_consumer* %45, %struct.g_consumer** %3, align 8
  %46 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %47 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %48 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %47, i32 0, i32 1
  store %struct.g_geom* %46, %struct.g_geom** %48, align 8
  %49 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %50 = load i32, i32* @DEVSTAT_ALL_SUPPORTED, align 4
  %51 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %52 = load i32, i32* @DEVSTAT_PRIORITY_MAX, align 4
  %53 = call i32 @devstat_new_entry(%struct.g_consumer* %49, i32 -1, i32 0, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %55 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %57 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %56, i32 0, i32 1
  %58 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %59 = load i32, i32* @consumer, align 4
  %60 = call i32 @LIST_INSERT_HEAD(i32* %57, %struct.g_consumer* %58, i32 %59)
  %61 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  ret %struct.g_consumer* %61
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_VALID_GEOM(%struct.g_geom*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.g_consumer* @g_malloc(i32, i32) #1

declare dso_local i32 @devstat_new_entry(%struct.g_consumer*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_consumer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
