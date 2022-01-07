; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_plex_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_plex_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32, %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gv_plex*)* @gv_plex_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_plex_flush(%struct.gv_plex* %0) #0 {
  %2 = alloca %struct.gv_plex*, align 8
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.gv_plex* %0, %struct.gv_plex** %2, align 8
  %5 = load %struct.gv_plex*, %struct.gv_plex** %2, align 8
  %6 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %5, i32 0, i32 1
  %7 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  store %struct.gv_softc* %7, %struct.gv_softc** %3, align 8
  %8 = load %struct.gv_plex*, %struct.gv_plex** %2, align 8
  %9 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.bio* @bioq_takefirst(i32 %10)
  store %struct.bio* %11, %struct.bio** %4, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.gv_plex*, %struct.gv_plex** %2, align 8
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = call i32 @gv_plex_start(%struct.gv_plex* %16, %struct.bio* %17)
  %19 = load %struct.gv_plex*, %struct.gv_plex** %2, align 8
  %20 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.bio* @bioq_takefirst(i32 %21)
  store %struct.bio* %22, %struct.bio** %4, align 8
  br label %12

23:                                               ; preds = %12
  ret void
}

declare dso_local %struct.bio* @bioq_takefirst(i32) #1

declare dso_local i32 @gv_plex_start(%struct.gv_plex*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
