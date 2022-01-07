; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_devinfo*, %struct.uart_bas }
%struct.uart_devinfo = type { i32, i32, i32, i32 }
%struct.uart_bas = type { i32 }

@USR1 = common dso_local global i32 0, align 4
@USR2 = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@DREN = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@RRDYEN = common dso_local global i32 0, align 4
@IDEN = common dso_local global i32 0, align 4
@UCR3 = common dso_local global i32 0, align 4
@RXDSEN = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@ATEN = common dso_local global i32 0, align 4
@TXMPTYEN = common dso_local global i32 0, align 4
@TRDYEN = common dso_local global i32 0, align 4
@TCEN = common dso_local global i32 0, align 4
@OREN = common dso_local global i32 0, align 4
@BKEN = common dso_local global i32 0, align 4
@WKEN = common dso_local global i32 0, align 4
@ADEN = common dso_local global i32 0, align 4
@ACIEN = common dso_local global i32 0, align 4
@ESCI = common dso_local global i32 0, align 4
@ENIRI = common dso_local global i32 0, align 4
@AIRINTEN = common dso_local global i32 0, align 4
@AWAKEN = common dso_local global i32 0, align 4
@FRAERREN = common dso_local global i32 0, align 4
@PARERREN = common dso_local global i32 0, align 4
@RTSDEN = common dso_local global i32 0, align 4
@RTSEN = common dso_local global i32 0, align 4
@DTREN = common dso_local global i32 0, align 4
@RI = common dso_local global i32 0, align 4
@DCD = common dso_local global i32 0, align 4
@DTRDEN = common dso_local global i32 0, align 4
@IRTS = common dso_local global i32 0, align 4
@RXDMUXSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @imx_uart_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.uart_devinfo*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 1
  store %struct.uart_bas* %6, %struct.uart_bas** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 0
  %9 = load %struct.uart_devinfo*, %struct.uart_devinfo** %8, align 8
  %10 = icmp ne %struct.uart_devinfo* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 0
  %14 = load %struct.uart_devinfo*, %struct.uart_devinfo** %13, align 8
  store %struct.uart_devinfo* %14, %struct.uart_devinfo** %4, align 8
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %17 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %20 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %23 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %26 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @imx_uart_init(%struct.uart_bas* %15, i32 %18, i32 %21, i32 %24, i32 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %31 = call i32 @imx_uart_init(%struct.uart_bas* %30, i32 115200, i32 8, i32 1, i32 0)
  br label %32

32:                                               ; preds = %29, %11
  %33 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %34 = call i32 @imx_uart_bus_getsig(%struct.uart_softc* %33)
  %35 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %36 = load i32, i32* @USR1, align 4
  %37 = call i32 @REG(i32 %36)
  %38 = call i32 @SETREG(%struct.uart_bas* %35, i32 %37, i32 65535)
  %39 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %40 = load i32, i32* @USR2, align 4
  %41 = call i32 @REG(i32 %40)
  %42 = call i32 @SETREG(%struct.uart_bas* %39, i32 %41, i32 65535)
  %43 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %44 = load i32, i32* @UCR4, align 4
  %45 = load i32, i32* @DREN, align 4
  %46 = call i32 @DIS(%struct.uart_bas* %43, i32 %44, i32 %45)
  %47 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %48 = load i32, i32* @UCR1, align 4
  %49 = load i32, i32* @RRDYEN, align 4
  %50 = call i32 @ENA(%struct.uart_bas* %47, i32 %48, i32 %49)
  %51 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %52 = load i32, i32* @UCR1, align 4
  %53 = load i32, i32* @IDEN, align 4
  %54 = call i32 @DIS(%struct.uart_bas* %51, i32 %52, i32 %53)
  %55 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %56 = load i32, i32* @UCR3, align 4
  %57 = load i32, i32* @RXDSEN, align 4
  %58 = call i32 @DIS(%struct.uart_bas* %55, i32 %56, i32 %57)
  %59 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %60 = load i32, i32* @UCR2, align 4
  %61 = load i32, i32* @ATEN, align 4
  %62 = call i32 @ENA(%struct.uart_bas* %59, i32 %60, i32 %61)
  %63 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %64 = load i32, i32* @UCR1, align 4
  %65 = load i32, i32* @TXMPTYEN, align 4
  %66 = call i32 @DIS(%struct.uart_bas* %63, i32 %64, i32 %65)
  %67 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %68 = load i32, i32* @UCR1, align 4
  %69 = load i32, i32* @TRDYEN, align 4
  %70 = call i32 @DIS(%struct.uart_bas* %67, i32 %68, i32 %69)
  %71 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %72 = load i32, i32* @UCR4, align 4
  %73 = load i32, i32* @TCEN, align 4
  %74 = call i32 @DIS(%struct.uart_bas* %71, i32 %72, i32 %73)
  %75 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %76 = load i32, i32* @UCR4, align 4
  %77 = load i32, i32* @OREN, align 4
  %78 = call i32 @DIS(%struct.uart_bas* %75, i32 %76, i32 %77)
  %79 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %80 = load i32, i32* @UCR4, align 4
  %81 = load i32, i32* @BKEN, align 4
  %82 = call i32 @ENA(%struct.uart_bas* %79, i32 %80, i32 %81)
  %83 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %84 = load i32, i32* @UCR4, align 4
  %85 = load i32, i32* @WKEN, align 4
  %86 = call i32 @DIS(%struct.uart_bas* %83, i32 %84, i32 %85)
  %87 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %88 = load i32, i32* @UCR1, align 4
  %89 = load i32, i32* @ADEN, align 4
  %90 = call i32 @DIS(%struct.uart_bas* %87, i32 %88, i32 %89)
  %91 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %92 = load i32, i32* @UCR3, align 4
  %93 = load i32, i32* @ACIEN, align 4
  %94 = call i32 @DIS(%struct.uart_bas* %91, i32 %92, i32 %93)
  %95 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %96 = load i32, i32* @UCR2, align 4
  %97 = load i32, i32* @ESCI, align 4
  %98 = call i32 @DIS(%struct.uart_bas* %95, i32 %96, i32 %97)
  %99 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %100 = load i32, i32* @UCR4, align 4
  %101 = load i32, i32* @ENIRI, align 4
  %102 = call i32 @DIS(%struct.uart_bas* %99, i32 %100, i32 %101)
  %103 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %104 = load i32, i32* @UCR3, align 4
  %105 = load i32, i32* @AIRINTEN, align 4
  %106 = call i32 @DIS(%struct.uart_bas* %103, i32 %104, i32 %105)
  %107 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %108 = load i32, i32* @UCR3, align 4
  %109 = load i32, i32* @AWAKEN, align 4
  %110 = call i32 @DIS(%struct.uart_bas* %107, i32 %108, i32 %109)
  %111 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %112 = load i32, i32* @UCR3, align 4
  %113 = load i32, i32* @FRAERREN, align 4
  %114 = call i32 @DIS(%struct.uart_bas* %111, i32 %112, i32 %113)
  %115 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %116 = load i32, i32* @UCR3, align 4
  %117 = load i32, i32* @PARERREN, align 4
  %118 = call i32 @DIS(%struct.uart_bas* %115, i32 %116, i32 %117)
  %119 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %120 = load i32, i32* @UCR1, align 4
  %121 = load i32, i32* @RTSDEN, align 4
  %122 = call i32 @DIS(%struct.uart_bas* %119, i32 %120, i32 %121)
  %123 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %124 = load i32, i32* @UCR2, align 4
  %125 = load i32, i32* @RTSEN, align 4
  %126 = call i32 @DIS(%struct.uart_bas* %123, i32 %124, i32 %125)
  %127 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %128 = load i32, i32* @UCR3, align 4
  %129 = load i32, i32* @DTREN, align 4
  %130 = call i32 @DIS(%struct.uart_bas* %127, i32 %128, i32 %129)
  %131 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %132 = load i32, i32* @UCR3, align 4
  %133 = load i32, i32* @RI, align 4
  %134 = call i32 @DIS(%struct.uart_bas* %131, i32 %132, i32 %133)
  %135 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %136 = load i32, i32* @UCR3, align 4
  %137 = load i32, i32* @DCD, align 4
  %138 = call i32 @DIS(%struct.uart_bas* %135, i32 %136, i32 %137)
  %139 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %140 = load i32, i32* @UCR3, align 4
  %141 = load i32, i32* @DTRDEN, align 4
  %142 = call i32 @DIS(%struct.uart_bas* %139, i32 %140, i32 %141)
  %143 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %144 = load i32, i32* @UCR2, align 4
  %145 = load i32, i32* @IRTS, align 4
  %146 = call i32 @ENA(%struct.uart_bas* %143, i32 %144, i32 %145)
  %147 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %148 = load i32, i32* @UCR3, align 4
  %149 = load i32, i32* @RXDMUXSEL, align 4
  %150 = call i32 @ENA(%struct.uart_bas* %147, i32 %148, i32 %149)
  ret i32 0
}

declare dso_local i32 @imx_uart_init(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @imx_uart_bus_getsig(%struct.uart_softc*) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @DIS(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @ENA(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
