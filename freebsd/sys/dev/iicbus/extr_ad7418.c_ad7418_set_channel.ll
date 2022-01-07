; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ad7418.c_ad7418_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7418_softc = type { i32, i32 }

@AD7418_CONF = common dso_local global i32 0, align 4
@AD7418_CONF_CHAN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7418_softc*, i32)* @ad7418_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7418_set_channel(%struct.ad7418_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ad7418_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ad7418_softc* %0, %struct.ad7418_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AD7418_CONF, align 4
  %16 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AD7418_CONF, align 4
  %20 = call i32 @ad7418_read_1(i32 %18, i32 %19)
  %21 = load i32, i32* @AD7418_CONF_CHAN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ad7418_write_1(i32 %14, i32 %15, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ad7418_softc*, %struct.ad7418_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ad7418_softc, %struct.ad7418_softc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @ad7418_write_1(i32, i32, i32) #1

declare dso_local i32 @ad7418_read_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
