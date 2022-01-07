; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_kill_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_kill_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32 }
%struct.g_consumer = type { i32, i32, i32, %struct.g_provider*, i32* }
%struct.g_provider = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@G_GEOM_WITHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Access %s r%dw%de%d = %d\00", align 1
@g_mirror_destroy_consumer = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Consumer %s destroyed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*, %struct.g_consumer*)* @g_mirror_kill_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_kill_consumer(%struct.g_mirror_softc* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32, align 4
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %7 = call i32 (...) @g_topology_assert()
  %8 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %9 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %8, i32 0, i32 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %12 = call i64 @g_mirror_is_busy(%struct.g_mirror_softc* %10, %struct.g_consumer* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %97

15:                                               ; preds = %2
  %16 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %17 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %16, i32 0, i32 3
  %18 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  store %struct.g_provider* %18, %struct.g_provider** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %20 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @G_GEOM_WITHER, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %39 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 0, %40
  %42 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %43 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 0, %44
  %46 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %47 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i32 %45, i32 %49, i32 0)
  %51 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %52 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %34
  %56 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %57 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %62 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60, %55, %34
  %66 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %67 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %68 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 0, %69
  %71 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %72 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 0, %73
  %75 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %76 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @g_access(%struct.g_consumer* %66, i32 %70, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %65, %60
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* @g_mirror_destroy_consumer, align 4
  %85 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %86 = load i32, i32* @M_WAITOK, align 4
  %87 = call i32 @g_post_event(i32 %84, %struct.g_consumer* %85, i32 %86, i32* null)
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %90 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, i32, ...) @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %94 = call i32 @g_detach(%struct.g_consumer* %93)
  %95 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %96 = call i32 @g_destroy_consumer(%struct.g_consumer* %95)
  br label %97

97:                                               ; preds = %88, %83, %14
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64 @g_mirror_is_busy(%struct.g_mirror_softc*, %struct.g_consumer*) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
