; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_SIO = common dso_local global i32 0, align 4
@DC_SIO_EESEL = common dso_local global i32 0, align 4
@DC_SIO_ROMCTL_READ = common dso_local global i32 0, align 4
@DC_SIO_EE_CLK = common dso_local global i32 0, align 4
@DC_SIO_EE_CS = common dso_local global i32 0, align 4
@DC_SIO_EE_DATAIN = common dso_local global i32 0, align 4
@DC_SIO_EE_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_eeprom_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_eeprom_width(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %4 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %5 = call i32 @dc_eeprom_idle(%struct.dc_softc* %4)
  %6 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %7 = load i32, i32* @DC_SIO, align 4
  %8 = load i32, i32* @DC_SIO_EESEL, align 4
  %9 = call i32 @CSR_WRITE_4(%struct.dc_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %11 = call i32 @dc_delay(%struct.dc_softc* %10)
  %12 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %13 = load i32, i32* @DC_SIO, align 4
  %14 = load i32, i32* @DC_SIO_ROMCTL_READ, align 4
  %15 = call i32 @DC_SETBIT(%struct.dc_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %17 = call i32 @dc_delay(%struct.dc_softc* %16)
  %18 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %19 = load i32, i32* @DC_SIO, align 4
  %20 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %21 = call i32 @DC_CLRBIT(%struct.dc_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %23 = call i32 @dc_delay(%struct.dc_softc* %22)
  %24 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %25 = load i32, i32* @DC_SIO, align 4
  %26 = load i32, i32* @DC_SIO_EE_CS, align 4
  %27 = call i32 @DC_SETBIT(%struct.dc_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %29 = call i32 @dc_delay(%struct.dc_softc* %28)
  store i32 3, i32* %3, align 4
  br label %30

30:                                               ; preds = %49, %1
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %3, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 1, %35
  %37 = and i32 6, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %41 = load i32, i32* @DC_SIO, align 4
  %42 = load i32, i32* @DC_SIO_EE_DATAIN, align 4
  %43 = call i32 @DC_SETBIT(%struct.dc_softc* %40, i32 %41, i32 %42)
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %46 = load i32, i32* @DC_SIO, align 4
  %47 = load i32, i32* @DC_SIO_EE_DATAIN, align 4
  %48 = call i32 @DC_CLRBIT(%struct.dc_softc* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %51 = call i32 @dc_delay(%struct.dc_softc* %50)
  %52 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %53 = load i32, i32* @DC_SIO, align 4
  %54 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %55 = call i32 @DC_SETBIT(%struct.dc_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %57 = call i32 @dc_delay(%struct.dc_softc* %56)
  %58 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %59 = load i32, i32* @DC_SIO, align 4
  %60 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %61 = call i32 @DC_CLRBIT(%struct.dc_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %63 = call i32 @dc_delay(%struct.dc_softc* %62)
  br label %30

64:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %95, %64
  %66 = load i32, i32* %3, align 4
  %67 = icmp sle i32 %66, 12
  br i1 %67, label %68, label %98

68:                                               ; preds = %65
  %69 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %70 = load i32, i32* @DC_SIO, align 4
  %71 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %72 = call i32 @DC_SETBIT(%struct.dc_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %74 = call i32 @dc_delay(%struct.dc_softc* %73)
  %75 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %76 = load i32, i32* @DC_SIO, align 4
  %77 = call i32 @CSR_READ_4(%struct.dc_softc* %75, i32 %76)
  %78 = load i32, i32* @DC_SIO_EE_DATAOUT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %68
  %82 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %83 = load i32, i32* @DC_SIO, align 4
  %84 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %85 = call i32 @DC_CLRBIT(%struct.dc_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %87 = call i32 @dc_delay(%struct.dc_softc* %86)
  br label %98

88:                                               ; preds = %68
  %89 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %90 = load i32, i32* @DC_SIO, align 4
  %91 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %92 = call i32 @DC_CLRBIT(%struct.dc_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %94 = call i32 @dc_delay(%struct.dc_softc* %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %65

98:                                               ; preds = %81, %65
  %99 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %100 = call i32 @dc_eeprom_idle(%struct.dc_softc* %99)
  %101 = load i32, i32* %3, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  %105 = icmp sgt i32 %104, 12
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %98
  %107 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %108 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %107, i32 0, i32 0
  store i32 6, i32* %108, align 4
  br label %113

109:                                              ; preds = %103
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %112 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %115 = load i32, i32* @DC_SIO, align 4
  %116 = load i32, i32* @DC_SIO_EESEL, align 4
  %117 = call i32 @CSR_WRITE_4(%struct.dc_softc* %114, i32 %115, i32 %116)
  %118 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %119 = call i32 @dc_delay(%struct.dc_softc* %118)
  %120 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %121 = load i32, i32* @DC_SIO, align 4
  %122 = load i32, i32* @DC_SIO_ROMCTL_READ, align 4
  %123 = call i32 @DC_SETBIT(%struct.dc_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %125 = call i32 @dc_delay(%struct.dc_softc* %124)
  %126 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %127 = load i32, i32* @DC_SIO, align 4
  %128 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %129 = call i32 @DC_CLRBIT(%struct.dc_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %131 = call i32 @dc_delay(%struct.dc_softc* %130)
  %132 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %133 = load i32, i32* @DC_SIO, align 4
  %134 = load i32, i32* @DC_SIO_EE_CS, align 4
  %135 = call i32 @DC_SETBIT(%struct.dc_softc* %132, i32 %133, i32 %134)
  %136 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %137 = call i32 @dc_delay(%struct.dc_softc* %136)
  %138 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %139 = call i32 @dc_eeprom_idle(%struct.dc_softc* %138)
  ret void
}

declare dso_local i32 @dc_eeprom_idle(%struct.dc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_delay(%struct.dc_softc*) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
