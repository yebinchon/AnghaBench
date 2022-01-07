; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_pass_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_pass_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_nop_softc = type { i32, i32 }
%struct.g_geom = type { %struct.g_nop_softc* }
%struct.g_nop_delay = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_geom* }

@dl_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_nop_pass_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_nop_pass_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_nop_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_nop_delay*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.g_nop_delay*
  store %struct.g_nop_delay* %7, %struct.g_nop_delay** %5, align 8
  %8 = load %struct.g_nop_delay*, %struct.g_nop_delay** %5, align 8
  %9 = getelementptr inbounds %struct.g_nop_delay, %struct.g_nop_delay* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.g_geom*, %struct.g_geom** %13, align 8
  store %struct.g_geom* %14, %struct.g_geom** %4, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 0
  %17 = load %struct.g_nop_softc*, %struct.g_nop_softc** %16, align 8
  store %struct.g_nop_softc* %17, %struct.g_nop_softc** %3, align 8
  %18 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %21, i32 0, i32 1
  %23 = load %struct.g_nop_delay*, %struct.g_nop_delay** %5, align 8
  %24 = load i32, i32* @dl_next, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.g_nop_delay* %23, i32 %24)
  %26 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = load %struct.g_nop_delay*, %struct.g_nop_delay** %5, align 8
  %30 = getelementptr inbounds %struct.g_nop_delay, %struct.g_nop_delay* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %33 = call i32 @g_nop_pass(%struct.TYPE_4__* %31, %struct.g_geom* %32)
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @g_free(i8* %34)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_nop_delay*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_nop_pass(%struct.TYPE_4__*, %struct.g_geom*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
