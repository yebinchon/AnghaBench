; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_regular_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_regular_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Delaying request.\00", align 1
@bio_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*, %struct.bio*)* @g_mirror_regular_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_regular_delay(%struct.g_mirror_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = call i32 @G_MIRROR_LOGREQ(i32 2, %struct.bio* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %7, i32 0, i32 0
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = load i32, i32* @bio_queue, align 4
  %11 = call i32 @TAILQ_INSERT_TAIL(i32* %8, %struct.bio* %9, i32 %10)
  ret void
}

declare dso_local i32 @G_MIRROR_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
