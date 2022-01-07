; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_stat_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_stat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64, i64, i32, i32*, i32 }

@ENINT_COALESCE = common dso_local global i32 0, align 4
@AHD_STAT_BUCKETS = common dso_local global i32 0, align 4
@AHD_STAT_UPDATE_MS = common dso_local global i32 0, align 4
@AHD_SHOW_INT_COALESCING = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ahd_stat_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_stat_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ahd_softc*
  store %struct.ahd_softc* %6, %struct.ahd_softc** %3, align 8
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %8 = call i32 @ahd_lock(%struct.ahd_softc* %7)
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ENINT_COALESCE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @ENINT_COALESCE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* @ENINT_COALESCE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %25
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ENINT_COALESCE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ahd_enable_coalescing(%struct.ahd_softc* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* @AHD_STAT_BUCKETS, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 0, i32* %82, align 4
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %83, i32 0, i32 6
  %85 = load i32, i32* @AHD_STAT_UPDATE_MS, align 4
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %87 = call i32 @aic_timer_reset(i32* %84, i32 %85, void (i8*)* @ahd_stat_timer, %struct.ahd_softc* %86)
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %89 = call i32 @ahd_unlock(%struct.ahd_softc* %88)
  ret void
}

declare dso_local i32 @ahd_lock(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_enable_coalescing(%struct.ahd_softc*, i32) #1

declare dso_local i32 @aic_timer_reset(i32*, i32, void (i8*)*, %struct.ahd_softc*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
