; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32 }

@RT2661_S = common dso_local global i32 0, align 4
@RT2661_C = common dso_local global i32 0, align 4
@RT2661_D = common dso_local global i32 0, align 4
@RT2661_E2PROM_CSR = common dso_local global i32 0, align 4
@RT2661_93C46 = common dso_local global i32 0, align 4
@RT2661_SHIFT_D = common dso_local global i32 0, align 4
@RT2661_Q = common dso_local global i32 0, align 4
@RT2661_SHIFT_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2661_softc*, i32)* @rt2661_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_eeprom_read(%struct.rt2661_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %9 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %8, i32 0)
  %10 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %11 = load i32, i32* @RT2661_S, align 4
  %12 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %10, i32 %11)
  %13 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %14 = load i32, i32* @RT2661_S, align 4
  %15 = load i32, i32* @RT2661_C, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %13, i32 %16)
  %18 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %19 = load i32, i32* @RT2661_S, align 4
  %20 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %18, i32 %19)
  %21 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %22 = load i32, i32* @RT2661_S, align 4
  %23 = load i32, i32* @RT2661_D, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %21, i32 %24)
  %26 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %27 = load i32, i32* @RT2661_S, align 4
  %28 = load i32, i32* @RT2661_D, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RT2661_C, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %26, i32 %31)
  %33 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %34 = load i32, i32* @RT2661_S, align 4
  %35 = load i32, i32* @RT2661_D, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %33, i32 %36)
  %38 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %39 = load i32, i32* @RT2661_S, align 4
  %40 = load i32, i32* @RT2661_D, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RT2661_C, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %38, i32 %43)
  %45 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %46 = load i32, i32* @RT2661_S, align 4
  %47 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %45, i32 %46)
  %48 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %49 = load i32, i32* @RT2661_S, align 4
  %50 = load i32, i32* @RT2661_C, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %48, i32 %51)
  %53 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %54 = load i32, i32* @RT2661_E2PROM_CSR, align 4
  %55 = call i32 @RAL_READ(%struct.rt2661_softc* %53, i32 %54)
  %56 = load i32, i32* @RT2661_93C46, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 5, i32 7
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %87, %2
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %66 = load i32, i32* @RT2661_S, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %67, %68
  %70 = and i32 %69, 1
  %71 = load i32, i32* @RT2661_SHIFT_D, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %66, %72
  %74 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %65, i32 %73)
  %75 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %76 = load i32, i32* @RT2661_S, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %77, %78
  %80 = and i32 %79, 1
  %81 = load i32, i32* @RT2661_SHIFT_D, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %76, %82
  %84 = load i32, i32* @RT2661_C, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %75, i32 %85)
  br label %87

87:                                               ; preds = %64
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  br label %61

90:                                               ; preds = %61
  %91 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %92 = load i32, i32* @RT2661_S, align 4
  %93 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %91, i32 %92)
  store i32 0, i32* %6, align 4
  store i32 15, i32* %7, align 4
  br label %94

94:                                               ; preds = %118, %90
  %95 = load i32, i32* %7, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %94
  %98 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %99 = load i32, i32* @RT2661_S, align 4
  %100 = load i32, i32* @RT2661_C, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %98, i32 %101)
  %103 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %104 = load i32, i32* @RT2661_E2PROM_CSR, align 4
  %105 = call i32 @RAL_READ(%struct.rt2661_softc* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @RT2661_Q, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @RT2661_SHIFT_Q, align 4
  %110 = ashr i32 %108, %109
  %111 = load i32, i32* %7, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %116 = load i32, i32* @RT2661_S, align 4
  %117 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %115, i32 %116)
  br label %118

118:                                              ; preds = %97
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %7, align 4
  br label %94

121:                                              ; preds = %94
  %122 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %123 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %122, i32 0)
  %124 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %125 = load i32, i32* @RT2661_S, align 4
  %126 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %124, i32 %125)
  %127 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %128 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %127, i32 0)
  %129 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %130 = load i32, i32* @RT2661_C, align 4
  %131 = call i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc* %129, i32 %130)
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @RT2661_EEPROM_CTL(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
