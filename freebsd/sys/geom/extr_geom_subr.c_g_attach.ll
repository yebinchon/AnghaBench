; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32, %struct.g_provider*, i32 }
%struct.g_provider = type { i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"g_attach(%p, %p)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"attach but attached\00", align 1
@G_CF_ORPHAN = common dso_local global i32 0, align 4
@consumers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_attach(%struct.g_consumer* %0, %struct.g_provider* %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  store %struct.g_provider* %1, %struct.g_provider** %4, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %8 = call i32 @G_VALID_CONSUMER(%struct.g_consumer* %7)
  %9 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %10 = call i32 @G_VALID_PROVIDER(%struct.g_provider* %9)
  %11 = load i32, i32* @G_T_TOPOLOGY, align 4
  %12 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %13 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %14 = call i32 @g_trace(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %12, %struct.g_provider* %13)
  %15 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 1
  %17 = load %struct.g_provider*, %struct.g_provider** %16, align 8
  %18 = icmp eq %struct.g_provider* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %22 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 1
  store %struct.g_provider* %21, %struct.g_provider** %23, align 8
  %24 = load i32, i32* @G_CF_ORPHAN, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %27 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 0
  %32 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %33 = load i32, i32* @consumers, align 4
  %34 = call i32 @LIST_INSERT_HEAD(i32* %31, %struct.g_consumer* %32, i32 %33)
  %35 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %36 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @redo_rank(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %43 = load i32, i32* @consumers, align 4
  %44 = call i32 @LIST_REMOVE(%struct.g_consumer* %42, i32 %43)
  %45 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %46 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %45, i32 0, i32 1
  store %struct.g_provider* null, %struct.g_provider** %46, align 8
  %47 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %48 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @redo_rank(i32 %49)
  br label %51

51:                                               ; preds = %41, %2
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_VALID_CONSUMER(%struct.g_consumer*) #1

declare dso_local i32 @G_VALID_PROVIDER(%struct.g_provider*) #1

declare dso_local i32 @g_trace(i32, i8*, %struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_consumer*, i32) #1

declare dso_local i32 @redo_rank(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_consumer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
