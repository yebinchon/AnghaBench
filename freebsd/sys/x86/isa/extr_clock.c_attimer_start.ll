; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_attimer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_attimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.eventtimer = type { i32 }
%struct.attimer_softc = type { i32, i64, i32 }

@MODE_PERIODIC = common dso_local global i32 0, align 4
@MODE_ONESHOT = common dso_local global i32 0, align 4
@i8254_intsrc = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i64, i64)* @attimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attimer_start(%struct.eventtimer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attimer_softc*, align 8
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %10 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.attimer_softc* @device_get_softc(i32 %12)
  store %struct.attimer_softc* %13, %struct.attimer_softc** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @MODE_PERIODIC, align 4
  %18 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %19 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %22 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load i32, i32* @MODE_ONESHOT, align 4
  %25 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %26 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %29 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %32 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i8254_intsrc, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i8254_intsrc, align 8
  %42 = call i32 %40(%struct.TYPE_5__* %41)
  %43 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %44 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %47 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.attimer_softc*, %struct.attimer_softc** %8, align 8
  %50 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @set_i8254_freq(i32 %48, i64 %51)
  ret i32 0
}

declare dso_local %struct.attimer_softc* @device_get_softc(i32) #1

declare dso_local i32 @set_i8254_freq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
