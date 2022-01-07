; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@retune_req_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @jz4780_mmc_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.jz4780_mmc_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.jz4780_mmc_softc* @device_get_softc(i32 %11)
  store %struct.jz4780_mmc_softc* %12, %struct.jz4780_mmc_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %14 [
    i32 144, label %16
    i32 143, label %24
    i32 141, label %32
    i32 140, label %40
    i32 138, label %48
    i32 139, label %55
    i32 137, label %62
    i32 134, label %69
    i32 133, label %76
    i32 132, label %83
    i32 131, label %91
    i32 128, label %95
    i32 129, label %103
    i32 142, label %110
    i32 130, label %117
    i32 135, label %125
    i32 136, label %128
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %132

16:                                               ; preds = %4
  %17 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %18 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = bitcast i64* %22 to i32*
  store i32 %21, i32* %23, align 4
  br label %131

24:                                               ; preds = %4
  %25 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %26 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64*, i64** %9, align 8
  %31 = bitcast i64* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %131

32:                                               ; preds = %4
  %33 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %34 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = bitcast i64* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %131

40:                                               ; preds = %4
  %41 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %42 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64*, i64** %9, align 8
  %47 = bitcast i64* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %131

48:                                               ; preds = %4
  %49 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %50 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = bitcast i64* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %131

55:                                               ; preds = %4
  %56 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %57 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64*, i64** %9, align 8
  %61 = bitcast i64* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %131

62:                                               ; preds = %4
  %63 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %64 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = bitcast i64* %67 to i32*
  store i32 %66, i32* %68, align 4
  br label %131

69:                                               ; preds = %4
  %70 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %71 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i64*, i64** %9, align 8
  %75 = bitcast i64* %74 to i32*
  store i32 %73, i32* %75, align 4
  br label %131

76:                                               ; preds = %4
  %77 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %78 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = bitcast i64* %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %131

83:                                               ; preds = %4
  %84 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %85 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = bitcast i64* %89 to i32*
  store i32 %88, i32* %90, align 4
  br label %131

91:                                               ; preds = %4
  %92 = load i32, i32* @retune_req_none, align 4
  %93 = load i64*, i64** %9, align 8
  %94 = bitcast i64* %93 to i32*
  store i32 %92, i32* %94, align 4
  br label %131

95:                                               ; preds = %4
  %96 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %97 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i64*, i64** %9, align 8
  %102 = bitcast i64* %101 to i32*
  store i32 %100, i32* %102, align 4
  br label %131

103:                                              ; preds = %4
  %104 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %105 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %9, align 8
  store i64 %108, i64* %109, align 8
  br label %131

110:                                              ; preds = %4
  %111 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %112 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i64*, i64** %9, align 8
  %116 = bitcast i64* %115 to i32*
  store i32 %114, i32* %116, align 4
  br label %131

117:                                              ; preds = %4
  %118 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %10, align 8
  %119 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = bitcast i64* %123 to i32*
  store i32 %122, i32* %124, align 4
  br label %131

125:                                              ; preds = %4
  %126 = load i64*, i64** %9, align 8
  %127 = bitcast i64* %126 to i32*
  store i32 65535, i32* %127, align 4
  br label %131

128:                                              ; preds = %4
  %129 = load i64*, i64** %9, align 8
  %130 = bitcast i64* %129 to i32*
  store i32 1000000, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125, %117, %110, %103, %95, %91, %83, %76, %69, %62, %55, %48, %40, %32, %24, %16
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %14
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.jz4780_mmc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
