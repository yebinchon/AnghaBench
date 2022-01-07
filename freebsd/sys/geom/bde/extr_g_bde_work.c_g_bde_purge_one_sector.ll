; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_purge_one_sector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_purge_one_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i32, i32 }
%struct.g_bde_sector = type { i64, i32, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"g_bde_purge_one_sector(%p, %p)\00", align 1
@list = common dso_local global i32 0, align 4
@g_bde_ncache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_softc*, %struct.g_bde_sector*)* @g_bde_purge_one_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_purge_one_sector(%struct.g_bde_softc* %0, %struct.g_bde_sector* %1) #0 {
  %3 = alloca %struct.g_bde_softc*, align 8
  %4 = alloca %struct.g_bde_sector*, align 8
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %3, align 8
  store %struct.g_bde_sector* %1, %struct.g_bde_sector** %4, align 8
  %5 = load i32, i32* @G_T_TOPOLOGY, align 4
  %6 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %7 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %8 = call i32 @g_trace(i32 %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.g_bde_softc* %6, %struct.g_bde_sector* %7)
  %9 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %10 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %15, i32 0, i32 1
  %17 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %18 = load i32, i32* @list, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.g_bde_sector* %17, i32 %18)
  %20 = load i32, i32* @g_bde_ncache, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @g_bde_ncache, align 4
  %22 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %23 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %27 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %30 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bzero(i32 %28, i32 %31)
  %33 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %34 = load %struct.g_bde_sector*, %struct.g_bde_sector** %4, align 8
  %35 = call i32 @g_bde_delete_sector(%struct.g_bde_softc* %33, %struct.g_bde_sector* %34)
  br label %36

36:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_bde_softc*, %struct.g_bde_sector*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_bde_sector*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @g_bde_delete_sector(%struct.g_bde_softc*, %struct.g_bde_sector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
