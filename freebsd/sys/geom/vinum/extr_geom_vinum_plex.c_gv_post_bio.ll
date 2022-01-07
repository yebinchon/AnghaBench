; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_post_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_post_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32, i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"NULL sc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NULL bp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gv_softc*, %struct.bio*)* @gv_post_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_post_bio(%struct.gv_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %6 = icmp ne %struct.gv_softc* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = icmp ne %struct.bio* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %17 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = call i32 @bioq_disksort(i32 %18, %struct.bio* %19)
  %21 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %22 = call i32 @wakeup(%struct.gv_softc* %21)
  %23 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %23, i32 0, i32 0
  %25 = call i32 @mtx_unlock(i32* %24)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_disksort(i32, %struct.bio*) #1

declare dso_local i32 @wakeup(%struct.gv_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
