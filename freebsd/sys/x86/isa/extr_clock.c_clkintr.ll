; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_clkintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_clkintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attimer_softc = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@i8254_timecounter = common dso_local global i64 0, align 8
@clock_lock = common dso_local global i32 0, align 4
@i8254_ticked = common dso_local global i64 0, align 8
@i8254_max_count = common dso_local global i64 0, align 8
@i8254_offset = common dso_local global i32 0, align 4
@i8254_lastcount = common dso_local global i64 0, align 8
@clkintr_pending = common dso_local global i64 0, align 8
@MODE_STOP = common dso_local global i64 0, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @clkintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clkintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.attimer_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.attimer_softc*
  store %struct.attimer_softc* %5, %struct.attimer_softc** %3, align 8
  %6 = load i64, i64* @i8254_timecounter, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.attimer_softc*, %struct.attimer_softc** %3, align 8
  %10 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = call i32 @mtx_lock_spin(i32* @clock_lock)
  %15 = load i64, i64* @i8254_ticked, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i64 0, i64* @i8254_ticked, align 8
  br label %24

18:                                               ; preds = %13
  %19 = load i64, i64* @i8254_max_count, align 8
  %20 = load i32, i32* @i8254_offset, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @i8254_offset, align 4
  store i64 0, i64* @i8254_lastcount, align 8
  br label %24

24:                                               ; preds = %18, %17
  store i64 0, i64* @clkintr_pending, align 8
  %25 = call i32 @mtx_unlock_spin(i32* @clock_lock)
  br label %26

26:                                               ; preds = %24, %8, %1
  %27 = load %struct.attimer_softc*, %struct.attimer_softc** %3, align 8
  %28 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.attimer_softc*, %struct.attimer_softc** %3, align 8
  %34 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MODE_STOP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.attimer_softc*, %struct.attimer_softc** %3, align 8
  %40 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %41, align 8
  %43 = load %struct.attimer_softc*, %struct.attimer_softc** %3, align 8
  %44 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %43, i32 0, i32 2
  %45 = load %struct.attimer_softc*, %struct.attimer_softc** %3, align 8
  %46 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %42(%struct.TYPE_2__* %44, i32 %48)
  br label %50

50:                                               ; preds = %38, %32, %26
  %51 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %51
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
