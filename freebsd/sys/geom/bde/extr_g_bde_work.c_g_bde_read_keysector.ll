; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_read_keysector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_read_keysector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_sector = type { i64, %struct.g_bde_work* }
%struct.g_bde_softc = type { i32 }
%struct.g_bde_work = type { i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"g_bde_read_keysector(%p)\00", align 1
@VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_bde_sector* (%struct.g_bde_softc*, %struct.g_bde_work*)* @g_bde_read_keysector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_bde_sector* @g_bde_read_keysector(%struct.g_bde_softc* %0, %struct.g_bde_work* %1) #0 {
  %3 = alloca %struct.g_bde_sector*, align 8
  %4 = alloca %struct.g_bde_softc*, align 8
  %5 = alloca %struct.g_bde_work*, align 8
  %6 = alloca %struct.g_bde_sector*, align 8
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %4, align 8
  store %struct.g_bde_work* %1, %struct.g_bde_work** %5, align 8
  %7 = load i32, i32* @G_T_TOPOLOGY, align 4
  %8 = load %struct.g_bde_work*, %struct.g_bde_work** %5, align 8
  %9 = call i32 @g_trace(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.g_bde_work* %8)
  %10 = load %struct.g_bde_work*, %struct.g_bde_work** %5, align 8
  %11 = call %struct.g_bde_sector* @g_bde_get_keysector(%struct.g_bde_work* %10)
  store %struct.g_bde_sector* %11, %struct.g_bde_sector** %6, align 8
  %12 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %13 = icmp eq %struct.g_bde_sector* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.g_bde_softc*, %struct.g_bde_softc** %4, align 8
  %16 = call i32 @g_bde_purge_sector(%struct.g_bde_softc* %15, i32 -1)
  %17 = load %struct.g_bde_work*, %struct.g_bde_work** %5, align 8
  %18 = call %struct.g_bde_sector* @g_bde_get_keysector(%struct.g_bde_work* %17)
  store %struct.g_bde_sector* %18, %struct.g_bde_sector** %6, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %21 = icmp eq %struct.g_bde_sector* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  store %struct.g_bde_sector* %23, %struct.g_bde_sector** %3, align 8
  br label %49

24:                                               ; preds = %19
  %25 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %26 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %25, i32 0, i32 1
  %27 = load %struct.g_bde_work*, %struct.g_bde_work** %26, align 8
  %28 = load %struct.g_bde_work*, %struct.g_bde_work** %5, align 8
  %29 = icmp ne %struct.g_bde_work* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  store %struct.g_bde_sector* %31, %struct.g_bde_sector** %3, align 8
  br label %49

32:                                               ; preds = %24
  %33 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %34 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VALID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  store %struct.g_bde_sector* %39, %struct.g_bde_sector** %3, align 8
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %42 = call i64 @g_bde_start_read(%struct.g_bde_sector* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  store %struct.g_bde_sector* %45, %struct.g_bde_sector** %3, align 8
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.g_bde_work*, %struct.g_bde_work** %5, align 8
  %48 = call i32 @g_bde_release_keysector(%struct.g_bde_work* %47)
  store %struct.g_bde_sector* null, %struct.g_bde_sector** %3, align 8
  br label %49

49:                                               ; preds = %46, %44, %38, %30, %22
  %50 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  ret %struct.g_bde_sector* %50
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_bde_work*) #1

declare dso_local %struct.g_bde_sector* @g_bde_get_keysector(%struct.g_bde_work*) #1

declare dso_local i32 @g_bde_purge_sector(%struct.g_bde_softc*, i32) #1

declare dso_local i64 @g_bde_start_read(%struct.g_bde_sector*) #1

declare dso_local i32 @g_bde_release_keysector(%struct.g_bde_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
