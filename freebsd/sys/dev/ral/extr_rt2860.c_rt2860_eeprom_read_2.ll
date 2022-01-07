; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_eeprom_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_eeprom_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT2860_S = common dso_local global i32 0, align 4
@RT2860_C = common dso_local global i32 0, align 4
@RT2860_D = common dso_local global i32 0, align 4
@RT2860_PCI_EECTRL = common dso_local global i32 0, align 4
@RT2860_SHIFT_D = common dso_local global i32 0, align 4
@RT2860_Q = common dso_local global i32 0, align 4
@RT2860_SHIFT_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2860_softc*, i32)* @rt2860_eeprom_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2860_eeprom_read_2(%struct.rt2860_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %9 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %8, i32 0)
  %10 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %11 = load i32, i32* @RT2860_S, align 4
  %12 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %10, i32 %11)
  %13 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %14 = load i32, i32* @RT2860_S, align 4
  %15 = load i32, i32* @RT2860_C, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %13, i32 %16)
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %19 = load i32, i32* @RT2860_S, align 4
  %20 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %18, i32 %19)
  %21 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %22 = load i32, i32* @RT2860_S, align 4
  %23 = load i32, i32* @RT2860_D, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %21, i32 %24)
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %27 = load i32, i32* @RT2860_S, align 4
  %28 = load i32, i32* @RT2860_D, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RT2860_C, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %26, i32 %31)
  %33 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %34 = load i32, i32* @RT2860_S, align 4
  %35 = load i32, i32* @RT2860_D, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %33, i32 %36)
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %39 = load i32, i32* @RT2860_S, align 4
  %40 = load i32, i32* @RT2860_D, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RT2860_C, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %38, i32 %43)
  %45 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %46 = load i32, i32* @RT2860_S, align 4
  %47 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %45, i32 %46)
  %48 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %49 = load i32, i32* @RT2860_S, align 4
  %50 = load i32, i32* @RT2860_C, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %48, i32 %51)
  %53 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %54 = load i32, i32* @RT2860_PCI_EECTRL, align 4
  %55 = call i32 @RAL_READ(%struct.rt2860_softc* %53, i32 %54)
  %56 = and i32 %55, 48
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 5, i32 7
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %86, %2
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %65 = load i32, i32* @RT2860_S, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %66, %67
  %69 = and i32 %68, 1
  %70 = load i32, i32* @RT2860_SHIFT_D, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %65, %71
  %73 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %64, i32 %72)
  %74 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %75 = load i32, i32* @RT2860_S, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %76, %77
  %79 = and i32 %78, 1
  %80 = load i32, i32* @RT2860_SHIFT_D, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %75, %81
  %83 = load i32, i32* @RT2860_C, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %74, i32 %84)
  br label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  br label %60

89:                                               ; preds = %60
  %90 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %91 = load i32, i32* @RT2860_S, align 4
  %92 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %90, i32 %91)
  store i32 0, i32* %6, align 4
  store i32 15, i32* %7, align 4
  br label %93

93:                                               ; preds = %117, %89
  %94 = load i32, i32* %7, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %98 = load i32, i32* @RT2860_S, align 4
  %99 = load i32, i32* @RT2860_C, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %97, i32 %100)
  %102 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %103 = load i32, i32* @RT2860_PCI_EECTRL, align 4
  %104 = call i32 @RAL_READ(%struct.rt2860_softc* %102, i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @RT2860_Q, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @RT2860_SHIFT_Q, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* %7, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %115 = load i32, i32* @RT2860_S, align 4
  %116 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %114, i32 %115)
  br label %117

117:                                              ; preds = %96
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %7, align 4
  br label %93

120:                                              ; preds = %93
  %121 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %122 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %121, i32 0)
  %123 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %124 = load i32, i32* @RT2860_S, align 4
  %125 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %123, i32 %124)
  %126 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %127 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %126, i32 0)
  %128 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %129 = load i32, i32* @RT2860_C, align 4
  %130 = call i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc* %128, i32 %129)
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @RT2860_EEPROM_CTL(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
