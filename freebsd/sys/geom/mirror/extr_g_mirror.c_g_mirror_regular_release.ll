; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_regular_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_regular_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32, i32, i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Requeuing regular requests after collision.\00", align 1
@bio_queue = common dso_local global i32 0, align 4
@bio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*)* @g_mirror_regular_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_regular_release(%struct.g_mirror_softc* %0) #0 {
  %2 = alloca %struct.g_mirror_softc*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %2, align 8
  %4 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %5 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %4, i32 0, i32 2
  %6 = call %struct.bio* @TAILQ_FIRST(i32* %5)
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = icmp eq %struct.bio* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = call i64 @g_mirror_sync_collision(%struct.g_mirror_softc* %10, %struct.bio* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %36

15:                                               ; preds = %9
  %16 = call i32 @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %18 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %21 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %20, i32 0, i32 2
  %22 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %22, i32 0, i32 1
  %24 = load i32, i32* @bio_queue, align 4
  %25 = call i32 @TAILQ_CONCAT(i32* %21, i32* %23, i32 %24)
  %26 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %27 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %26, i32 0, i32 2
  %28 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %29 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %28, i32 0, i32 1
  %30 = load i32, i32* @bio, align 4
  %31 = load i32, i32* @bio_queue, align 4
  %32 = call i32 @TAILQ_SWAP(i32* %27, i32* %29, i32 %30, i32 %31)
  %33 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %2, align 8
  %34 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  br label %36

36:                                               ; preds = %15, %14, %8
  ret void
}

declare dso_local %struct.bio* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @g_mirror_sync_collision(%struct.g_mirror_softc*, %struct.bio*) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_CONCAT(i32*, i32*, i32) #1

declare dso_local i32 @TAILQ_SWAP(i32*, i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
