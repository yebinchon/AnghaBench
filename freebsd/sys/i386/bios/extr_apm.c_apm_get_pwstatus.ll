; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_get_pwstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_get_pwstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@PMDV_ALLDEV = common dso_local global i64 0, align 8
@PMDV_BATT0 = common dso_local global i64 0, align 8
@PMDV_BATT_ALL = common dso_local global i64 0, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_GETPWSTATUS = common dso_local global i32 0, align 4
@apm_swab_batt_minutes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @apm_get_pwstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_get_pwstatus(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.apm_softc*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PMDV_ALLDEV, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PMDV_BATT0, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PMDV_BATT_ALL, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %10
  store i32 1, i32* %2, align 4
  br label %145

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @APM_BIOS, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* @APM_GETPWSTATUS, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %29 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %36 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i64 %34, i64* %38, align 8
  %39 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %44 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 65535, i32* %46, align 4
  %47 = call i64 (...) @apm_bioscall()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %145

50:                                               ; preds = %23
  %51 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %52 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = ashr i64 %55, 8
  %57 = and i64 %56, 255
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %62 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = and i64 %65, 255
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %71 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %80 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 255
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %88 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 65535
  store i32 %92, i32* %90, align 4
  %93 = load i64, i64* @apm_swab_batt_minutes, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %50
  %96 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %97 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @__bswap16(i32 %100)
  %102 = or i32 %101, 32768
  %103 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %104 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %95, %50
  %108 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %109 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 65535
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  store i32 -1, i32* %116, align 8
  br label %144

117:                                              ; preds = %107
  %118 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %119 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 32768
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %117
  %126 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %127 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 32767
  %132 = mul nsw i32 %131, 60
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  br label %143

135:                                              ; preds = %117
  %136 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %137 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %135, %125
  br label %144

144:                                              ; preds = %143, %114
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %49, %22
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i64 @apm_bioscall(...) #1

declare dso_local i32 @__bswap16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
