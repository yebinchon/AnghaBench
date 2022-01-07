; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_9287.c_eepromSwap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_9287.c_eepromSwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8**, i8*, i8*, i8* }

@AR9287_MAX_CHAINS = common dso_local global i64 0, align 8
@AR5416_EEPROM_MODAL_SPURS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @eepromSwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eepromSwap(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 6
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @__bswap16(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  store i8* %13, i8** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @__bswap16(i8* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  store i8* %24, i8** %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @__bswap16(i8* %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  store i8* %35, i8** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @__bswap16(i8* %46)
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %48, i8** %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @__bswap16(i8* %61)
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* %63, i8** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @__bswap16(i8* %74)
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i8* %76, i8** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @__bswap16(i8* %85)
  store i8* %86, i8** %5, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i8* %87, i8** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @__bswap16(i8* %96)
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i8* %98, i8** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %6, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @__bswap32(i64 %108)
  store i64 %109, i64* %3, align 8
  %110 = load i64, i64* %3, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  store i64 0, i64* %4, align 8
  br label %113

113:                                              ; preds = %131, %1
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @AR9287_MAX_CHAINS, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* %4, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @__bswap32(i64 %123)
  store i64 %124, i64* %3, align 8
  %125 = load i64, i64* %3, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %4, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64 %125, i64* %130, align 8
  br label %131

131:                                              ; preds = %117
  %132 = load i64, i64* %4, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %4, align 8
  br label %113

134:                                              ; preds = %113
  store i64 0, i64* %4, align 8
  br label %135

135:                                              ; preds = %155, %134
  %136 = load i64, i64* %4, align 8
  %137 = load i64, i64* @AR5416_EEPROM_MODAL_SPURS, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i64, i64* %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @__bswap16(i8* %146)
  store i8* %147, i8** %5, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i64, i64* %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  store i8* %148, i8** %154, align 8
  br label %155

155:                                              ; preds = %139
  %156 = load i64, i64* %4, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %4, align 8
  br label %135

158:                                              ; preds = %135
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
