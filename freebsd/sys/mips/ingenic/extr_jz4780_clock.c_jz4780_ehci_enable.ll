; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_ehci_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_ehci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_clock_softc = type { i32 }

@jz4780_clock_devclass = common dso_local global i32 0, align 4
@JZ_USBPCR = common dso_local global i32 0, align 4
@PCR_OTG_DISABLE = common dso_local global i32 0, align 4
@JZ_OPCR = common dso_local global i32 0, align 4
@OPCR_SPENDN1 = common dso_local global i32 0, align 4
@JZ_USBPCR1 = common dso_local global i32 0, align 4
@PCR_DMPD1 = common dso_local global i32 0, align 4
@PCR_DPPD1 = common dso_local global i32 0, align 4
@PCR_WORD_I_F1 = common dso_local global i32 0, align 4
@PCR_WORD_I_F0 = common dso_local global i32 0, align 4
@PCR_POR = common dso_local global i32 0, align 4
@JZ_SRBC = common dso_local global i32 0, align 4
@SRBC_UHC_SR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jz4780_ehci_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.jz4780_clock_softc*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @jz4780_clock_devclass, align 4
  %6 = call i32* @devclass_get_device(i32 %5, i32 0)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %126

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.jz4780_clock_softc* @device_get_softc(i32* %11)
  store %struct.jz4780_clock_softc* %12, %struct.jz4780_clock_softc** %3, align 8
  %13 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %14 = call i64 @jz4780_ehci_clk_config(%struct.jz4780_clock_softc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %126

17:                                               ; preds = %10
  %18 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %19 = call i32 @CGU_LOCK(%struct.jz4780_clock_softc* %18)
  %20 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %21 = load i32, i32* @JZ_USBPCR, align 4
  %22 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @PCR_OTG_DISABLE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %28 = load i32, i32* @JZ_USBPCR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %32 = load i32, i32* @JZ_OPCR, align 4
  %33 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @OPCR_SPENDN1, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %38 = load i32, i32* @JZ_OPCR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %42 = load i32, i32* @JZ_USBPCR1, align 4
  %43 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @PCR_DMPD1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %48 = load i32, i32* @JZ_USBPCR1, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %52 = load i32, i32* @JZ_USBPCR1, align 4
  %53 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @PCR_DPPD1, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %58 = load i32, i32* @JZ_USBPCR1, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %62 = load i32, i32* @JZ_USBPCR1, align 4
  %63 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @PCR_WORD_I_F1, align 4
  %65 = load i32, i32* @PCR_WORD_I_F0, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %70 = load i32, i32* @JZ_USBPCR1, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %74 = load i32, i32* @JZ_USBPCR, align 4
  %75 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @PCR_POR, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %80 = load i32, i32* @JZ_USBPCR, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %79, i32 %80, i32 %81)
  %83 = call i32 @DELAY(i32 1)
  %84 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %85 = load i32, i32* @JZ_USBPCR, align 4
  %86 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @PCR_POR, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %92 = load i32, i32* @JZ_USBPCR, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %91, i32 %92, i32 %93)
  %95 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %96 = load i32, i32* @JZ_SRBC, align 4
  %97 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @SRBC_UHC_SR, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %102 = load i32, i32* @JZ_SRBC, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @hz, align 4
  %106 = mul nsw i32 300, %105
  %107 = sdiv i32 %106, 1000
  %108 = call i32 @DELAY(i32 %107)
  %109 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %110 = load i32, i32* @JZ_SRBC, align 4
  %111 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %109, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* @SRBC_UHC_SR, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %117 = load i32, i32* @JZ_SRBC, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %116, i32 %117, i32 %118)
  %120 = load i32, i32* @hz, align 4
  %121 = mul nsw i32 300, %120
  %122 = sdiv i32 %121, 1000
  %123 = call i32 @DELAY(i32 %122)
  %124 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %125 = call i32 @CGU_UNLOCK(%struct.jz4780_clock_softc* %124)
  store i32 0, i32* %1, align 4
  br label %126

126:                                              ; preds = %17, %16, %9
  %127 = load i32, i32* %1, align 4
  ret i32 %127
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local %struct.jz4780_clock_softc* @device_get_softc(i32*) #1

declare dso_local i64 @jz4780_ehci_clk_config(%struct.jz4780_clock_softc*) #1

declare dso_local i32 @CGU_LOCK(%struct.jz4780_clock_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.jz4780_clock_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_clock_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CGU_UNLOCK(%struct.jz4780_clock_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
