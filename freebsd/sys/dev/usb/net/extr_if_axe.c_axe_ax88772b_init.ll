; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772b_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i32, %struct.usb_ether }
%struct.usb_ether = type { i8** }

@AXE_GPIO_RELOAD_EEPROM = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AXE_CMD_SROM_READ = common dso_local global i32 0, align 4
@AXE_EEPROM_772B_PHY_PWRCFG = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@AXE_EEPROM_772B_NODE_ID = common dso_local global i64 0, align 8
@AXE_CMD_RXCTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axe_softc*)* @axe_ax88772b_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_ax88772b_init(%struct.axe_softc* %0) #0 {
  %2 = alloca %struct.axe_softc*, align 8
  %3 = alloca %struct.usb_ether*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.axe_softc* %0, %struct.axe_softc** %2, align 8
  %7 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %7, i32 0, i32 1
  store %struct.usb_ether* %8, %struct.usb_ether** %3, align 8
  %9 = load i32, i32* @AXE_GPIO_RELOAD_EEPROM, align 4
  %10 = load i32, i32* @hz, align 4
  %11 = sdiv i32 %10, 32
  %12 = call i32 @AXE_GPIO_WRITE(i32 %9, i32 %11)
  %13 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %14 = load i32, i32* @AXE_CMD_SROM_READ, align 4
  %15 = load i64, i64* @AXE_EEPROM_772B_PHY_PWRCFG, align 8
  %16 = call i32 @axe_cmd(%struct.axe_softc* %13, i32 %14, i32 0, i64 %15, i32* %4)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @le16toh(i32 %17)
  %19 = and i32 %18, 65280
  %20 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %23 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %53, %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %28 = sdiv i32 %27, 2
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %32 = load i32, i32* @AXE_CMD_SROM_READ, align 4
  %33 = load i64, i64* @AXE_EEPROM_772B_NODE_ID, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @axe_cmd(%struct.axe_softc* %31, i32 %32, i32 0, i64 %36, i32* %4)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @le16toh(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %5, align 8
  store i8* %43, i8** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  br label %53

53:                                               ; preds = %30
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %25

56:                                               ; preds = %25
  %57 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %58 = call i32 @axe_ax88772_phywake(%struct.axe_softc* %57)
  %59 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %60 = load i32, i32* @AXE_CMD_RXCTL_WRITE, align 4
  %61 = call i32 @axe_cmd(%struct.axe_softc* %59, i32 %60, i32 0, i64 0, i32* null)
  ret void
}

declare dso_local i32 @AXE_GPIO_WRITE(i32, i32) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i64, i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @axe_ax88772_phywake(%struct.axe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
