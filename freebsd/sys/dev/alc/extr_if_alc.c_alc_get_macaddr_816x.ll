; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_get_macaddr_816x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_get_macaddr_816x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@ALC_SLD = common dso_local global i32 0, align 4
@SLD_PROGRESS = common dso_local global i32 0, align 4
@SLD_START = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"reloading station address via TWSI timed out!\0A\00", align 1
@ALC_EEPROM_LD = common dso_local global i32 0, align 4
@EEPROM_LD_EEPROM_EXIST = common dso_local global i32 0, align 4
@EEPROM_LD_FLASH_EXIST = common dso_local global i32 0, align 4
@EEPROM_LD_PROGRESS = common dso_local global i32 0, align 4
@EEPROM_LD_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"reloading EEPROM/FLASH timed out!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_get_macaddr_816x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_get_macaddr_816x(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 100, i32* %4, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %11 = load i32, i32* @ALC_SLD, align 4
  %12 = call i32 @CSR_READ_4(%struct.alc_softc* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SLD_PROGRESS, align 4
  %15 = load i32, i32* @SLD_START, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %25

20:                                               ; preds = %9
  %21 = call i32 @DELAY(i32 1000)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  br label %6

25:                                               ; preds = %19, %6
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %25
  %29 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %30 = load i32, i32* @ALC_SLD, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SLD_START, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @CSR_WRITE_4(%struct.alc_softc* %29, i32 %30, i32 %33)
  store i32 100, i32* %4, align 4
  br label %35

35:                                               ; preds = %49, %28
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = call i32 @DELAY(i32 1000)
  %40 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %41 = load i32, i32* @ALC_SLD, align 4
  %42 = call i32 @CSR_READ_4(%struct.alc_softc* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SLD_START, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %35

52:                                               ; preds = %47, %35
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %67

58:                                               ; preds = %52
  %59 = load i64, i64* @bootverbose, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %140

71:                                               ; preds = %68
  %72 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %73 = load i32, i32* @ALC_EEPROM_LD, align 4
  %74 = call i32 @CSR_READ_4(%struct.alc_softc* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @EEPROM_LD_EEPROM_EXIST, align 4
  %77 = load i32, i32* @EEPROM_LD_FLASH_EXIST, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %139

81:                                               ; preds = %71
  store i32 100, i32* %4, align 4
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %4, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %87 = load i32, i32* @ALC_EEPROM_LD, align 4
  %88 = call i32 @CSR_READ_4(%struct.alc_softc* %86, i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @EEPROM_LD_PROGRESS, align 4
  %91 = load i32, i32* @EEPROM_LD_START, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %101

96:                                               ; preds = %85
  %97 = call i32 @DELAY(i32 1000)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %4, align 4
  br label %82

101:                                              ; preds = %95, %82
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %101
  %105 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %106 = load i32, i32* @ALC_EEPROM_LD, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @EEPROM_LD_START, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @CSR_WRITE_4(%struct.alc_softc* %105, i32 %106, i32 %109)
  store i32 100, i32* %4, align 4
  br label %111

111:                                              ; preds = %125, %104
  %112 = load i32, i32* %4, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = call i32 @DELAY(i32 1000)
  %116 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %117 = load i32, i32* @ALC_EEPROM_LD, align 4
  %118 = call i32 @CSR_READ_4(%struct.alc_softc* %116, i32 %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @EEPROM_LD_START, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %128

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %4, align 4
  br label %111

128:                                              ; preds = %123, %111
  br label %138

129:                                              ; preds = %101
  %130 = load i64, i64* @bootverbose, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %134 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %132, %129
  br label %138

138:                                              ; preds = %137, %128
  br label %139

139:                                              ; preds = %138, %71
  br label %140

140:                                              ; preds = %139, %68
  %141 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %142 = call i32 @alc_get_macaddr_par(%struct.alc_softc* %141)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @alc_get_macaddr_par(%struct.alc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
