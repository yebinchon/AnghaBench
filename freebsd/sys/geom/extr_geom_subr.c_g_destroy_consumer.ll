; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_destroy_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_destroy_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i64, i64, i64, i32, %struct.g_geom*, i32* }
%struct.g_geom = type { i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"g_destroy_consumer(%p)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"g_destroy_consumer but attached\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"g_destroy_consumer with acr\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"g_destroy_consumer with acw\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"g_destroy_consumer with ace\00", align 1
@consumer = common dso_local global i32 0, align 4
@G_GEOM_WITHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_destroy_consumer(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_geom*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %4 = call i32 (...) @g_topology_assert()
  %5 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %6 = call i32 @G_VALID_CONSUMER(%struct.g_consumer* %5)
  %7 = load i32, i32* @G_T_TOPOLOGY, align 4
  %8 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %9 = call i32 @g_trace(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %8)
  %10 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %17 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %29 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %35 = call i32 @g_cancel_event(%struct.g_consumer* %34)
  %36 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %37 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %36, i32 0, i32 4
  %38 = load %struct.g_geom*, %struct.g_geom** %37, align 8
  store %struct.g_geom* %38, %struct.g_geom** %3, align 8
  %39 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %40 = load i32, i32* @consumer, align 4
  %41 = call i32 @LIST_REMOVE(%struct.g_consumer* %39, i32 %40)
  %42 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %43 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @devstat_remove_entry(i32 %44)
  %46 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %47 = call i32 @g_free(%struct.g_consumer* %46)
  %48 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %49 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @G_GEOM_WITHER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %1
  %55 = call i32 (...) @g_do_wither()
  br label %56

56:                                               ; preds = %54, %1
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_VALID_CONSUMER(%struct.g_consumer*) #1

declare dso_local i32 @g_trace(i32, i8*, %struct.g_consumer*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_cancel_event(%struct.g_consumer*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_consumer*, i32) #1

declare dso_local i32 @devstat_remove_entry(i32) #1

declare dso_local i32 @g_free(%struct.g_consumer*) #1

declare dso_local i32 @g_do_wither(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
