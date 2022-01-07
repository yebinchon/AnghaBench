; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_destroy_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_destroy_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i64, i64, i64, i32, %struct.g_geom*, i32 }
%struct.g_geom = type { i32, i32 (%struct.g_provider*)* }

@.str = private unnamed_addr constant [32 x i8] c"g_destroy_provider but attached\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"g_destroy_provider with acr\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"g_destroy_provider with acw\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"g_destroy_provider with ace\00", align 1
@provider = common dso_local global i32 0, align 4
@G_GEOM_WITHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_destroy_provider(%struct.g_provider* %0) #0 {
  %2 = alloca %struct.g_provider*, align 8
  %3 = alloca %struct.g_geom*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %2, align 8
  %4 = call i32 (...) @g_topology_assert()
  %5 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %6 = call i32 @G_VALID_PROVIDER(%struct.g_provider* %5)
  %7 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %8 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %7, i32 0, i32 5
  %9 = call i32 @LIST_EMPTY(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %12 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %30 = call i32 @g_cancel_event(%struct.g_provider* %29)
  %31 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %32 = load i32, i32* @provider, align 4
  %33 = call i32 @LIST_REMOVE(%struct.g_provider* %31, i32 %32)
  %34 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 4
  %36 = load %struct.g_geom*, %struct.g_geom** %35, align 8
  store %struct.g_geom* %36, %struct.g_geom** %3, align 8
  %37 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @devstat_remove_entry(i32 %39)
  %41 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %42 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %41, i32 0, i32 1
  %43 = load i32 (%struct.g_provider*)*, i32 (%struct.g_provider*)** %42, align 8
  %44 = icmp ne i32 (%struct.g_provider*)* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %1
  %46 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %47 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %46, i32 0, i32 1
  %48 = load i32 (%struct.g_provider*)*, i32 (%struct.g_provider*)** %47, align 8
  %49 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %50 = call i32 %48(%struct.g_provider* %49)
  br label %51

51:                                               ; preds = %45, %1
  %52 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %53 = call i32 @g_free(%struct.g_provider* %52)
  %54 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %55 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @G_GEOM_WITHER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (...) @g_do_wither()
  br label %62

62:                                               ; preds = %60, %51
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_VALID_PROVIDER(%struct.g_provider*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @g_cancel_event(%struct.g_provider*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_provider*, i32) #1

declare dso_local i32 @devstat_remove_entry(i32) #1

declare dso_local i32 @g_free(%struct.g_provider*) #1

declare dso_local i32 @g_do_wither(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
