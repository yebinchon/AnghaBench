; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioths_softc = type { i32 }

@GPIOTHS_POLLTIME = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gpioths_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpioths_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gpioths_softc*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.gpioths_softc* @device_get_softc(i64 %7)
  store %struct.gpioths_softc* %8, %struct.gpioths_softc** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @device_get_parent(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @gpioths_dht_readbytes(i32 %10, i64 %11)
  %13 = load %struct.gpioths_softc*, %struct.gpioths_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gpioths_softc, %struct.gpioths_softc* %13, i32 0, i32 0
  %15 = load i32, i32* @GPIOTHS_POLLTIME, align 4
  %16 = load i32, i32* @hz, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @callout_schedule(i32* %14, i32 %17)
  ret void
}

declare dso_local %struct.gpioths_softc* @device_get_softc(i64) #1

declare dso_local i32 @gpioths_dht_readbytes(i32, i64) #1

declare dso_local i32 @device_get_parent(i64) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
