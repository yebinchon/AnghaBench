; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_read_prom_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_read_prom_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }

@IWI_EEPROM_S = common dso_local global i32 0, align 4
@IWI_EEPROM_C = common dso_local global i32 0, align 4
@IWI_EEPROM_D = common dso_local global i32 0, align 4
@IWI_EEPROM_SHIFT_D = common dso_local global i32 0, align 4
@IWI_MEM_EEPROM_CTL = common dso_local global i32 0, align 4
@IWI_EEPROM_Q = common dso_local global i32 0, align 4
@IWI_EEPROM_SHIFT_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, i32)* @iwi_read_prom_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_read_prom_word(%struct.iwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %9 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %8, i32 0)
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %11 = load i32, i32* @IWI_EEPROM_S, align 4
  %12 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %10, i32 %11)
  %13 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %14 = load i32, i32* @IWI_EEPROM_S, align 4
  %15 = load i32, i32* @IWI_EEPROM_C, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %13, i32 %16)
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = load i32, i32* @IWI_EEPROM_S, align 4
  %20 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %18, i32 %19)
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %22 = load i32, i32* @IWI_EEPROM_S, align 4
  %23 = load i32, i32* @IWI_EEPROM_D, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %21, i32 %24)
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %27 = load i32, i32* @IWI_EEPROM_S, align 4
  %28 = load i32, i32* @IWI_EEPROM_D, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IWI_EEPROM_C, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %26, i32 %31)
  %33 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %34 = load i32, i32* @IWI_EEPROM_S, align 4
  %35 = load i32, i32* @IWI_EEPROM_D, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %33, i32 %36)
  %38 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %39 = load i32, i32* @IWI_EEPROM_S, align 4
  %40 = load i32, i32* @IWI_EEPROM_D, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IWI_EEPROM_C, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %38, i32 %43)
  %45 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %46 = load i32, i32* @IWI_EEPROM_S, align 4
  %47 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %45, i32 %46)
  %48 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %49 = load i32, i32* @IWI_EEPROM_S, align 4
  %50 = load i32, i32* @IWI_EEPROM_C, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %48, i32 %51)
  store i32 7, i32* %7, align 4
  br label %53

53:                                               ; preds = %79, %2
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %58 = load i32, i32* @IWI_EEPROM_S, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %59, %60
  %62 = and i32 %61, 1
  %63 = load i32, i32* @IWI_EEPROM_SHIFT_D, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %58, %64
  %66 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %57, i32 %65)
  %67 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %68 = load i32, i32* @IWI_EEPROM_S, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %69, %70
  %72 = and i32 %71, 1
  %73 = load i32, i32* @IWI_EEPROM_SHIFT_D, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %68, %74
  %76 = load i32, i32* @IWI_EEPROM_C, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %67, i32 %77)
  br label %79

79:                                               ; preds = %56
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  br label %53

82:                                               ; preds = %53
  %83 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %84 = load i32, i32* @IWI_EEPROM_S, align 4
  %85 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %83, i32 %84)
  store i32 0, i32* %6, align 4
  store i32 15, i32* %7, align 4
  br label %86

86:                                               ; preds = %110, %82
  %87 = load i32, i32* %7, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %91 = load i32, i32* @IWI_EEPROM_S, align 4
  %92 = load i32, i32* @IWI_EEPROM_C, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %90, i32 %93)
  %95 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %96 = load i32, i32* @IWI_EEPROM_S, align 4
  %97 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %95, i32 %96)
  %98 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %99 = load i32, i32* @IWI_MEM_EEPROM_CTL, align 4
  %100 = call i32 @MEM_READ_4(%struct.iwi_softc* %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @IWI_EEPROM_Q, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @IWI_EEPROM_SHIFT_Q, align 4
  %105 = ashr i32 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %89
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %7, align 4
  br label %86

113:                                              ; preds = %86
  %114 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %115 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %114, i32 0)
  %116 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %117 = load i32, i32* @IWI_EEPROM_S, align 4
  %118 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %116, i32 %117)
  %119 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %120 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %119, i32 0)
  %121 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %122 = load i32, i32* @IWI_EEPROM_C, align 4
  %123 = call i32 @IWI_EEPROM_CTL(%struct.iwi_softc* %121, i32 %122)
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @IWI_EEPROM_CTL(%struct.iwi_softc*, i32) #1

declare dso_local i32 @MEM_READ_4(%struct.iwi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
