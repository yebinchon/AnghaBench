; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_mountver_softc* }
%struct.g_mountver_softc = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"%s is offline.  Mount verification in progress.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_mountver_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mountver_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_mountver_softc*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %4 = call i32 (...) @g_topology_assert()
  %5 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %6 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %8, align 8
  store %struct.g_mountver_softc* %9, %struct.g_mountver_softc** %3, align 8
  %10 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %11 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %13 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21, %16, %1
  %27 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %28 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %29 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 0, %30
  %32 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %33 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %37 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 0, %38
  %40 = call i32 @g_access(%struct.g_consumer* %27, i32 %31, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %26, %21
  %42 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %43 = call i32 @g_detach(%struct.g_consumer* %42)
  %44 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %45 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @G_MOUNTVER_DEBUG(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %46)
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @G_MOUNTVER_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
