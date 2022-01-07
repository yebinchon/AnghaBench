; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32, i32, i64 }

@WD_INTERVAL = common dso_local global i32 0, align 4
@ICHWD_TCO_V3_TICK = common dso_local global i32 0, align 4
@ICHWD_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @ichwd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ichwd_event(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ichwd_softc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ichwd_softc*
  store %struct.ichwd_softc* %10, %struct.ichwd_softc** %7, align 8
  %11 = load i32, i32* @WD_INTERVAL, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %15 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @ICHWD_TCO_V3_TICK, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, i32* %8, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* @ICHWD_TICK, align 4
  %27 = udiv i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %33 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %38 = call i32 @ichwd_tmr_enable(%struct.ichwd_softc* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %42 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ichwd_tmr_set(%struct.ichwd_softc* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %51 = call i32 @ichwd_tmr_reload(%struct.ichwd_softc* %50)
  %52 = load i32*, i32** %6, align 8
  store i32 0, i32* %52, align 4
  br label %62

53:                                               ; preds = %28
  %54 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %55 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.ichwd_softc*, %struct.ichwd_softc** %7, align 8
  %60 = call i32 @ichwd_tmr_disable(%struct.ichwd_softc* %59)
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %49
  ret void
}

declare dso_local i32 @ichwd_tmr_enable(%struct.ichwd_softc*) #1

declare dso_local i32 @ichwd_tmr_set(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_tmr_reload(%struct.ichwd_softc*) #1

declare dso_local i32 @ichwd_tmr_disable(%struct.ichwd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
