; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_mirror_softc* }
%struct.g_mirror_softc = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Synchronization request delivered.\00", align 1
@G_MIRROR_BIO_FLAG_SYNC = common dso_local global i32 0, align 4
@bio_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_mirror_sync_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_sync_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_mirror_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = call i32 @G_MIRROR_LOGREQ(i32 3, %struct.bio* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  store %struct.g_mirror_softc* %12, %struct.g_mirror_softc** %3, align 8
  %13 = load i32, i32* @G_MIRROR_BIO_FLAG_SYNC, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %17 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %20 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %19, i32 0, i32 1
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = load i32, i32* @bio_queue, align 4
  %23 = call i32 @TAILQ_INSERT_TAIL(i32* %20, %struct.bio* %21, i32 %22)
  %24 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %25 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %28 = call i32 @wakeup(%struct.g_mirror_softc* %27)
  ret void
}

declare dso_local i32 @G_MIRROR_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.bio*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_mirror_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
