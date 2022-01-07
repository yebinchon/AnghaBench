; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2_setgain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@urtw_8225v2_gain_bg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32)* @urtw_8225v2_setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_8225v2_setgain(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** @urtw_8225v2_gain_bg, align 8
  store i32* %7, i32** %5, align 8
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %8, i32 13, i32 %14)
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %17 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %16, i32 0, i32 0
  %18 = call i32 @usb_pause_mtx(i32* %17, i32 1)
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 3
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %19, i32 27, i32 %26)
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %29 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %28, i32 0, i32 0
  %30 = call i32 @usb_pause_mtx(i32* %29, i32 1)
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 3
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %31, i32 29, i32 %38)
  %40 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %41 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %40, i32 0, i32 0
  %42 = call i32 @usb_pause_mtx(i32* %41, i32 1)
  %43 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %44 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %43, i32 33, i32 23)
  %45 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %46 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %45, i32 0, i32 0
  %47 = call i32 @usb_pause_mtx(i32* %46, i32 1)
  br label %48

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
