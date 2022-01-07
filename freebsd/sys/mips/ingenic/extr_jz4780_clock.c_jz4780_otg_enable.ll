; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_otg_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_otg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_clock_softc = type { i32 }

@jz4780_clock_devclass = common dso_local global i32 0, align 4
@JZ_USBPCR1 = common dso_local global i32 0, align 4
@PCR_SYNOPSYS = common dso_local global i32 0, align 4
@PCR_WORD_I_F0 = common dso_local global i32 0, align 4
@PCR_WORD_I_F1 = common dso_local global i32 0, align 4
@JZ_USBVBFIL = common dso_local global i32 0, align 4
@USBVBFIL_IDDIGFIL = common dso_local global i32 0, align 4
@USBVBFIL_USBVBFIL = common dso_local global i32 0, align 4
@JZ_USBRDT = common dso_local global i32 0, align 4
@USBRDT_USBRDT = common dso_local global i32 0, align 4
@USBRESET_DETECT_TIME = common dso_local global i32 0, align 4
@USBRDT_VBFIL_LD_EN = common dso_local global i32 0, align 4
@JZ_USBPCR = common dso_local global i32 0, align 4
@PCR_USB_MODE = common dso_local global i32 0, align 4
@PCR_COMMONONN = common dso_local global i32 0, align 4
@PCR_VBUSVLDEXT = common dso_local global i32 0, align 4
@PCR_VBUSVLDEXTSEL = common dso_local global i32 0, align 4
@PCR_OTG_DISABLE = common dso_local global i32 0, align 4
@PCR_POR = common dso_local global i32 0, align 4
@JZ_OPCR = common dso_local global i32 0, align 4
@OPCR_SPENDN0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jz4780_otg_enable() #0 {
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
  br label %114

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.jz4780_clock_softc* @device_get_softc(i32* %11)
  store %struct.jz4780_clock_softc* %12, %struct.jz4780_clock_softc** %3, align 8
  %13 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %14 = call i32 @CGU_LOCK(%struct.jz4780_clock_softc* %13)
  %15 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %16 = load i32, i32* @JZ_USBPCR1, align 4
  %17 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @PCR_SYNOPSYS, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @PCR_WORD_I_F0, align 4
  %22 = load i32, i32* @PCR_WORD_I_F1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %27 = load i32, i32* @JZ_USBPCR1, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %31 = load i32, i32* @JZ_USBVBFIL, align 4
  %32 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @USBVBFIL_IDDIGFIL, align 4
  %35 = call i32 @REG_SET(i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @USBVBFIL_USBVBFIL, align 4
  %38 = call i32 @REG_SET(i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %40 = load i32, i32* @JZ_USBVBFIL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %44 = load i32, i32* @JZ_USBRDT, align 4
  %45 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @USBRDT_USBRDT, align 4
  %48 = load i32, i32* @USBRESET_DETECT_TIME, align 4
  %49 = call i32 @REG_SET(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @USBRDT_VBFIL_LD_EN, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %54 = load i32, i32* @JZ_USBRDT, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %58 = load i32, i32* @JZ_USBPCR, align 4
  %59 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @PCR_USB_MODE, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @PCR_COMMONONN, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @PCR_VBUSVLDEXT, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @PCR_VBUSVLDEXTSEL, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @PCR_OTG_DISABLE, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %77 = load i32, i32* @JZ_USBPCR, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %81 = load i32, i32* @JZ_USBPCR, align 4
  %82 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @PCR_POR, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %87 = load i32, i32* @JZ_USBPCR, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %86, i32 %87, i32 %88)
  %90 = call i32 @DELAY(i32 1000)
  %91 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %92 = load i32, i32* @JZ_USBPCR, align 4
  %93 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @PCR_POR, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %99 = load i32, i32* @JZ_USBPCR, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %103 = load i32, i32* @JZ_OPCR, align 4
  %104 = call i32 @CSR_READ_4(%struct.jz4780_clock_softc* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @OPCR_SPENDN0, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %109 = load i32, i32* @JZ_OPCR, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @CSR_WRITE_4(%struct.jz4780_clock_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %3, align 8
  %113 = call i32 @CGU_UNLOCK(%struct.jz4780_clock_softc* %112)
  store i32 0, i32* %1, align 4
  br label %114

114:                                              ; preds = %10, %9
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local %struct.jz4780_clock_softc* @device_get_softc(i32*) #1

declare dso_local i32 @CGU_LOCK(%struct.jz4780_clock_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.jz4780_clock_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jz4780_clock_softc*, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CGU_UNLOCK(%struct.jz4780_clock_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
