; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v4k.c_eepromSwap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v4k.c_eepromSwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5416eeprom_4k = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8**, i8*, i8*, i8* }

@AR5416_4K_MAX_CHAINS = common dso_local global i64 0, align 8
@AR5416_EEPROM_MODAL_SPURS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5416eeprom_4k*)* @eepromSwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eepromSwap(%struct.ar5416eeprom_4k* %0) #0 {
  %2 = alloca %struct.ar5416eeprom_4k*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.ar5416eeprom_4k* %0, %struct.ar5416eeprom_4k** %2, align 8
  %7 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %8 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @__bswap16(i8* %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %14 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  store i8* %12, i8** %15, align 8
  %16 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %17 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @__bswap16(i8* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %23 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  store i8* %21, i8** %24, align 8
  %25 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %26 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @__bswap16(i8* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %32 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i8* %30, i8** %33, align 8
  %34 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %35 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @__bswap16(i8* %39)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %43 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %41, i8** %46, align 8
  %47 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %48 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @__bswap16(i8* %52)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %56 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  store i8* %54, i8** %59, align 8
  %60 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %61 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @__bswap16(i8* %63)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %67 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %70 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @__bswap16(i8* %72)
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %76 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %79 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @__bswap16(i8* %81)
  store i8* %82, i8** %5, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %85 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %2, align 8
  %88 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %87, i32 0, i32 0
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %6, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @__bswap32(i64 %91)
  store i64 %92, i64* %3, align 8
  %93 = load i64, i64* %3, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  store i64 0, i64* %4, align 8
  br label %96

96:                                               ; preds = %114, %1
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @AR5416_4K_MAX_CHAINS, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @__bswap32(i64 %106)
  store i64 %107, i64* %3, align 8
  %108 = load i64, i64* %3, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %4, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64 %108, i64* %113, align 8
  br label %114

114:                                              ; preds = %100
  %115 = load i64, i64* %4, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %4, align 8
  br label %96

117:                                              ; preds = %96
  store i64 0, i64* %4, align 8
  br label %118

118:                                              ; preds = %138, %117
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* @AR5416_EEPROM_MODAL_SPURS, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i64, i64* %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @__bswap16(i8* %129)
  store i8* %130, i8** %5, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i64, i64* %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i8* %131, i8** %137, align 8
  br label %138

138:                                              ; preds = %122
  %139 = load i64, i64* %4, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %4, align 8
  br label %118

141:                                              ; preds = %118
  ret void
}

declare dso_local i8* @__bswap16(i8*) #1

declare dso_local i64 @__bswap32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
