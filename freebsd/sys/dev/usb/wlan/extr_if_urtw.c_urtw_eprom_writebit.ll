; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_eprom_writebit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_eprom_writebit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_EPROM_CMD = common dso_local global i32 0, align 4
@URTW_EPROM_WRITEBIT = common dso_local global i32 0, align 4
@URTW_EPROM_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i64)* @urtw_eprom_writebit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_eprom_writebit(%struct.urtw_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %8 = load i32, i32* @URTW_EPROM_CMD, align 4
  %9 = call i32 @urtw_read8_m(%struct.urtw_softc* %7, i32 %8, i32* %5)
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %14 = load i32, i32* @URTW_EPROM_CMD, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @URTW_EPROM_WRITEBIT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @urtw_write8_m(%struct.urtw_softc* %13, i32 %14, i32 %17)
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %21 = load i32, i32* @URTW_EPROM_CMD, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @URTW_EPROM_WRITEBIT, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @urtw_write8_m(%struct.urtw_softc* %20, i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %19, %12
  %28 = load i32, i32* @URTW_EPROM_DELAY, align 4
  %29 = call i32 @DELAY(i32 %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
