; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_set_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_set_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, i32 }

@JME_FLAG_EFUSE = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM_FUNC0 = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM_FUNC_SHIFT = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM_PAGE_BAR1 = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM_PAGE_SHIFT = common dso_local global i32 0, align 4
@JME_PAR0 = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM_ADDR_SHIFT = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM_DATA_SHIFT = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM = common dso_local global i32 0, align 4
@JME_EFUSE_EEPROM_WRITE = common dso_local global i32 0, align 4
@JME_PAR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*, i32*)* @jme_set_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_set_macaddr(%struct.jme_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %8 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @JME_FLAG_EFUSE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %16 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %19 = call i64 @bcmp(i32* %14, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %59, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i32, i32* @JME_EFUSE_EEPROM_FUNC0, align 4
  %28 = load i32, i32* @JME_EFUSE_EEPROM_FUNC_SHIFT, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @JME_EFUSE_EEPROM_PAGE_BAR1, align 4
  %31 = load i32, i32* @JME_EFUSE_EEPROM_PAGE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @JME_PAR0, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @JME_EFUSE_EEPROM_ADDR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @JME_EFUSE_EEPROM_DATA_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %52 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @JME_EFUSE_EEPROM, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @JME_EFUSE_EEPROM_WRITE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @pci_write_config(i32 %53, i32 %54, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %26
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %22

62:                                               ; preds = %22
  br label %63

63:                                               ; preds = %62, %13
  br label %97

64:                                               ; preds = %2
  %65 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %66 = load i32, i32* @JME_PAR0, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 24
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %70, %74
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %75, %79
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %80, %83
  %85 = call i32 @CSR_WRITE_4(%struct.jme_softc* %65, i32 %66, i32 %84)
  %86 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %87 = load i32, i32* @JME_PAR1, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  %96 = call i32 @CSR_WRITE_4(%struct.jme_softc* %86, i32 %87, i32 %95)
  br label %97

97:                                               ; preds = %64, %63
  ret void
}

declare dso_local i64 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
