; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.g_geom* }
%struct.g_geom = type { %struct.g_sched_softc* }
%struct.g_sched_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.bio*)* }

@DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"null bio_caller1 in g_sched_done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_sched_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_sched_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_sched_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  store %struct.g_geom* %7, %struct.g_geom** %3, align 8
  %8 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %9 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %8, i32 0, i32 0
  %10 = load %struct.g_sched_softc*, %struct.g_sched_softc** %9, align 8
  store %struct.g_sched_softc* %10, %struct.g_sched_softc** %4, align 8
  %11 = load i32, i32* @DONE, align 4
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = call i32 @TRC_BIO_EVENT(i32 %11, %struct.bio* %12)
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %19 = call i32 @g_sched_lock(%struct.g_geom* %18)
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call i32 @g_sched_update_stats(%struct.bio* %20)
  %22 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %23 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.bio*)*, i32 (i32, %struct.bio*)** %25, align 8
  %27 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %28 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = call i32 %26(i32 %29, %struct.bio* %30)
  %32 = load %struct.g_sched_softc*, %struct.g_sched_softc** %4, align 8
  %33 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %39 = call i32 @wakeup(%struct.g_geom* %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %42 = call i32 @g_sched_flush_classes(%struct.g_geom* %41)
  %43 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %44 = call i32 @g_sched_unlock(%struct.g_geom* %43)
  %45 = load %struct.bio*, %struct.bio** %2, align 8
  %46 = call i32 @g_std_done(%struct.bio* %45)
  ret void
}

declare dso_local i32 @TRC_BIO_EVENT(i32, %struct.bio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_sched_lock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_update_stats(%struct.bio*) #1

declare dso_local i32 @wakeup(%struct.g_geom*) #1

declare dso_local i32 @g_sched_flush_classes(%struct.g_geom*) #1

declare dso_local i32 @g_sched_unlock(%struct.g_geom*) #1

declare dso_local i32 @g_std_done(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
