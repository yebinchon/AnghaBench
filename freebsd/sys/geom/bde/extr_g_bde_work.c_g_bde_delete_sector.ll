; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_delete_sector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_delete_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i32 }
%struct.g_bde_sector = type { %struct.g_bde_sector*, i64 }

@g_bde_nsect = common dso_local global i32 0, align 4
@M_GBDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_softc*, %struct.g_bde_sector*)* @g_bde_delete_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_delete_sector(%struct.g_bde_softc* %0, %struct.g_bde_sector* %1) #0 {
  %3 = alloca %struct.g_bde_softc*, align 8
  %4 = alloca %struct.g_bde_sector*, align 8
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %3, align 8
  store %struct.g_bde_sector* %1, %struct.g_bde_sector** %4, align 8
  %5 = load i32, i32* @g_bde_nsect, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @g_bde_nsect, align 4
  %7 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %12 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %17 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %16, i32 0, i32 0
  %18 = load %struct.g_bde_sector*, %struct.g_bde_sector** %17, align 8
  %19 = load i32, i32* @M_GBDE, align 4
  %20 = call i32 @free(%struct.g_bde_sector* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %23 = load i32, i32* @M_GBDE, align 4
  %24 = call i32 @free(%struct.g_bde_sector* %22, i32 %23)
  ret void
}

declare dso_local i32 @free(%struct.g_bde_sector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
