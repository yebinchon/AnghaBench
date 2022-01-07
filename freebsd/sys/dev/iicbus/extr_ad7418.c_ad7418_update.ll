; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7418_softc = type { i64, i32, i32, i32, i32 }

@SA_XLOCKED = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@AD7418_CHAN_TEMP = common dso_local global i32 0, align 4
@AD7418_TEMP = common dso_local global i32 0, align 4
@AD7418_CHAN_VOLT = common dso_local global i32 0, align 4
@AD7418_VOLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7418_softc*)* @ad7418_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7418_update(%struct.ad7418_softc* %0) #0 {
  %2 = alloca %struct.ad7418_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ad7418_softc* %0, %struct.ad7418_softc** %2, align 8
  %4 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %4, i32 0, i32 4
  %6 = load i32, i32* @SA_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* %5, i32 %6)
  %8 = load i64, i64* @ticks, align 8
  %9 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = load i64, i64* @hz, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %1
  %16 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %17 = load i32, i32* @AD7418_CHAN_TEMP, align 4
  %18 = call i32 @ad7418_set_channel(%struct.ad7418_softc* %16, i32 %17)
  %19 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AD7418_TEMP, align 4
  %23 = call i32 @ad7418_read_2(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %15
  %31 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %32 = load i32, i32* @AD7418_CHAN_VOLT, align 4
  %33 = call i32 @ad7418_set_channel(%struct.ad7418_softc* %31, i32 %32)
  %34 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AD7418_VOLT, align 4
  %38 = call i32 @ad7418_read_2(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %30
  %46 = load i64, i64* @ticks, align 8
  %47 = load %struct.ad7418_softc*, %struct.ad7418_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @ad7418_set_channel(%struct.ad7418_softc*, i32) #1

declare dso_local i32 @ad7418_read_2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
