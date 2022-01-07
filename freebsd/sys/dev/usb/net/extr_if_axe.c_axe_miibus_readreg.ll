; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i32 }

@AXE_CMD_MII_OPMODE_SW = common dso_local global i32 0, align 4
@AXE_CMD_MII_READ_REG = common dso_local global i32 0, align 4
@AXE_CMD_MII_OPMODE_HW = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_EXTCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @axe_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axe_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.axe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.axe_softc* @device_get_softc(i32 %10)
  store %struct.axe_softc* %11, %struct.axe_softc** %7, align 8
  %12 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %13 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_owned(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %19 = call i32 @AXE_LOCK(%struct.axe_softc* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %22 = load i32, i32* @AXE_CMD_MII_OPMODE_SW, align 4
  %23 = call i32 @axe_cmd(%struct.axe_softc* %21, i32 %22, i32 0, i32 0, i32* null)
  %24 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %25 = load i32, i32* @AXE_CMD_MII_READ_REG, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @axe_cmd(%struct.axe_softc* %24, i32 %25, i32 %26, i32 %27, i32* %8)
  %29 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %30 = load i32, i32* @AXE_CMD_MII_OPMODE_HW, align 4
  %31 = call i32 @axe_cmd(%struct.axe_softc* %29, i32 %30, i32 0, i32 0, i32* null)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @le16toh(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %35 = call i64 @AXE_IS_772(%struct.axe_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MII_BMSR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @BMSR_EXTCAP, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %37, %20
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %51 = call i32 @AXE_UNLOCK(%struct.axe_softc* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.axe_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AXE_LOCK(%struct.axe_softc*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i64 @AXE_IS_772(%struct.axe_softc*) #1

declare dso_local i32 @AXE_UNLOCK(%struct.axe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
