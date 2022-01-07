; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i64, i64, i64, i64, i64, %struct.TYPE_4__*, %struct.g_provider* }
%struct.TYPE_4__ = type { i32 }
%struct.g_provider = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"g_detach(%p)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"detach but not attached\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"detach but nonzero acr\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"detach but nonzero acw\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"detach but nonzero ace\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"detach with active requests\00", align 1
@consumers = common dso_local global i32 0, align 4
@G_GEOM_WITHER = common dso_local global i32 0, align 4
@G_PF_WITHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_detach(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_provider*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %4 = call i32 (...) @g_topology_assert()
  %5 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %6 = call i32 @G_VALID_CONSUMER(%struct.g_consumer* %5)
  %7 = load i32, i32* @G_T_TOPOLOGY, align 4
  %8 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %9 = call i32 @g_trace(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %8)
  %10 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 6
  %12 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  %13 = icmp ne %struct.g_provider* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %17 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %29 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %35 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %38 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %44 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %43, i32 0, i32 6
  %45 = load %struct.g_provider*, %struct.g_provider** %44, align 8
  store %struct.g_provider* %45, %struct.g_provider** %3, align 8
  %46 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %47 = load i32, i32* @consumers, align 4
  %48 = call i32 @LIST_REMOVE(%struct.g_consumer* %46, i32 %47)
  %49 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %50 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %49, i32 0, i32 6
  store %struct.g_provider* null, %struct.g_provider** %50, align 8
  %51 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %52 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @G_GEOM_WITHER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %1
  %60 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %61 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @G_GEOM_WITHER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %59
  %69 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %70 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @G_PF_WITHER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68, %59, %1
  %76 = call i32 (...) @g_do_wither()
  br label %77

77:                                               ; preds = %75, %68
  %78 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %79 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %78, i32 0, i32 5
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @redo_rank(%struct.TYPE_4__* %80)
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_VALID_CONSUMER(%struct.g_consumer*) #1

declare dso_local i32 @g_trace(i32, i8*, %struct.g_consumer*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_consumer*, i32) #1

declare dso_local i32 @g_do_wither(...) #1

declare dso_local i32 @redo_rank(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
