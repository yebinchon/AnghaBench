; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v14.c_eepromSwap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v14.c_eepromSwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5416eeprom = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__*, i8** }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8**, i8*, i8*, i8* }

@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR5416_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5416eeprom*)* @eepromSwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eepromSwap(%struct.ar5416eeprom* %0) #0 {
  %2 = alloca %struct.ar5416eeprom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.ar5416eeprom* %0, %struct.ar5416eeprom** %2, align 8
  %8 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %9 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 6
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @__bswap16(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %15 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  store i8* %13, i8** %16, align 8
  %17 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %18 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @__bswap16(i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %24 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i8* %22, i8** %25, align 8
  %26 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %27 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @__bswap16(i8* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %33 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store i8* %31, i8** %34, align 8
  %35 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %36 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @__bswap16(i8* %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %44 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %42, i8** %47, align 8
  %48 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %49 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @__bswap16(i8* %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %57 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* %55, i8** %60, align 8
  %61 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %62 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @__bswap16(i8* %64)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %68 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %71 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @__bswap16(i8* %73)
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %77 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %80 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @__bswap16(i8* %82)
  store i8* %83, i8** %6, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %86 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %178, %1
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %181

91:                                               ; preds = %88
  %92 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %2, align 8
  %93 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %7, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @__bswap32(i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %125, %91
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @__bswap32(i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %109
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %105

128:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %148, %128
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i8* @__bswap16(i8* %139)
  store i8* %140, i8** %6, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i8**, i8*** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* %141, i8** %147, align 8
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %129

151:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %174, %151
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @AR5416_EEPROM_MODAL_SPURS, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %152
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* @__bswap16(i8* %164)
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i8* %166, i8** %173, align 8
  br label %174

174:                                              ; preds = %156
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %152

177:                                              ; preds = %152
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %88

181:                                              ; preds = %88
  ret void
}

declare dso_local i8* @__bswap16(i8*) #1

declare dso_local i32 @__bswap32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
