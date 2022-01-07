; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_softc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip.c_g_uzip_softc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_uzip_softc = type { i32, %struct.g_uzip_softc*, i32, i32, %struct.g_uzip_softc*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.g_geom = type { i32 }

@GUZ_DBG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: %d requests, %d cached\0A\00", align 1
@GUZ_SHUTDOWN = common dso_local global i32 0, align 4
@GUZ_EXITING = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"guzfree\00", align 1
@hz = common dso_local global i32 0, align 4
@M_GEOM_UZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_uzip_softc*, %struct.g_geom*)* @g_uzip_softc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_uzip_softc_free(%struct.g_uzip_softc* %0, %struct.g_geom* %1) #0 {
  %3 = alloca %struct.g_uzip_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  store %struct.g_uzip_softc* %0, %struct.g_uzip_softc** %3, align 8
  store %struct.g_geom* %1, %struct.g_geom** %4, align 8
  %5 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %6 = icmp ne %struct.g_geom* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, i32* @GUZ_DBG_INFO, align 4
  %9 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %10 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @DPRINTF(i32 %8, i8* %19)
  br label %21

21:                                               ; preds = %7, %2
  %22 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %23 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %22, i32 0, i32 3
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load i32, i32* @GUZ_SHUTDOWN, align 4
  %26 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %31 = call i32 @wakeup(%struct.g_uzip_softc* %30)
  br label %32

32:                                               ; preds = %40, %21
  %33 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %34 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GUZ_EXITING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %42 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %45 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %44, i32 0, i32 3
  %46 = load i32, i32* @PRIBIO, align 4
  %47 = load i32, i32* @hz, align 4
  %48 = sdiv i32 %47, 10
  %49 = call i32 @msleep(i32 %43, i32* %45, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %52 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %51, i32 0, i32 3
  %53 = call i32 @mtx_unlock(i32* %52)
  %54 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %55 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %54, i32 0, i32 5
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %57, align 8
  %59 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %60 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 %58(%struct.TYPE_2__* %61)
  %63 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %64 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %63, i32 0, i32 4
  %65 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %64, align 8
  %66 = load i32, i32* @M_GEOM_UZIP, align 4
  %67 = call i32 @free(%struct.g_uzip_softc* %65, i32 %66)
  %68 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %69 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %68, i32 0, i32 3
  %70 = call i32 @mtx_destroy(i32* %69)
  %71 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %72 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %71, i32 0, i32 2
  %73 = call i32 @mtx_destroy(i32* %72)
  %74 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %75 = getelementptr inbounds %struct.g_uzip_softc, %struct.g_uzip_softc* %74, i32 0, i32 1
  %76 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %75, align 8
  %77 = load i32, i32* @M_GEOM_UZIP, align 4
  %78 = call i32 @free(%struct.g_uzip_softc* %76, i32 %77)
  %79 = load %struct.g_uzip_softc*, %struct.g_uzip_softc** %3, align 8
  %80 = load i32, i32* @M_GEOM_UZIP, align 4
  %81 = call i32 @free(%struct.g_uzip_softc* %79, i32 %80)
  ret void
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_uzip_softc*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.g_uzip_softc*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
