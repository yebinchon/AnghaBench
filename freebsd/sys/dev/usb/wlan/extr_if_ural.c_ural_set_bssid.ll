; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i32 }

@RAL_MAC_CSR5 = common dso_local global i32 0, align 4
@RAL_MAC_CSR6 = common dso_local global i32 0, align 4
@RAL_MAC_CSR7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"setting BSSID to %6D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*, i32*)* @ural_set_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_set_bssid(%struct.ural_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.ural_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 8
  %13 = or i32 %8, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %15 = load i32, i32* @RAL_MAC_CSR5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ural_write(%struct.ural_softc* %14, i32 %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %27 = load i32, i32* @RAL_MAC_CSR6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ural_write(%struct.ural_softc* %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %39 = load i32, i32* @RAL_MAC_CSR7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ural_write(%struct.ural_softc* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ural_write(%struct.ural_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
