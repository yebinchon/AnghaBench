; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, %struct.g_bde_softc*, %struct.g_bde_sector* }
%struct.g_bde_softc = type { i32 }
%struct.g_bde_sector = type { i64, i64, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"g_bde_read_done(%p)\00", align 1
@EIO = common dso_local global i64 0, align 8
@VALID = common dso_local global i32 0, align 4
@JUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_bde_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_read_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_bde_sector*, align 8
  %4 = alloca %struct.g_bde_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 3
  %7 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  store %struct.g_bde_sector* %7, %struct.g_bde_sector** %3, align 8
  %8 = load i32, i32* @G_T_TOPOLOGY, align 4
  %9 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %10 = call i32 @g_trace(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.g_bde_sector* %9)
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 2
  %13 = load %struct.g_bde_softc*, %struct.g_bde_softc** %12, align 8
  store %struct.g_bde_softc* %13, %struct.g_bde_softc** %4, align 8
  %14 = load %struct.g_bde_softc*, %struct.g_bde_softc** %4, align 8
  %15 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %26 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i64, i64* @EIO, align 8
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %21, %1
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %38 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %40 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* @VALID, align 4
  %45 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %46 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @JUNK, align 4
  %49 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %50 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.g_bde_softc*, %struct.g_bde_softc** %4, align 8
  %53 = call i32 @wakeup(%struct.g_bde_softc* %52)
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = call i32 @g_destroy_bio(%struct.bio* %54)
  %56 = load %struct.g_bde_softc*, %struct.g_bde_softc** %4, align 8
  %57 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %56, i32 0, i32 0
  %58 = call i32 @mtx_unlock(i32* %57)
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_bde_sector*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_bde_softc*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
