; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_oxford_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_oxford_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_softc = type { i32, i32, %struct.TYPE_2__*, i32, %struct.puc_cfg* }
%struct.TYPE_2__ = type { i32 }
%struct.puc_cfg = type { i32 }
%struct.puc_bar = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%d UARTs detected\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PUC_PCI_BARS = common dso_local global i32 0, align 4
@PUC_TYPE_SERIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.puc_softc*, i32, i32, i64*)* @puc_config_oxford_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puc_config_oxford_pcie(%struct.puc_softc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.puc_cfg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.puc_bar*, align 8
  %13 = alloca i32, align 4
  store %struct.puc_softc* %0, %struct.puc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %15 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %14, i32 0, i32 4
  %16 = load %struct.puc_cfg*, %struct.puc_cfg** %15, align 8
  store %struct.puc_cfg* %16, %struct.puc_cfg** %10, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %129 [
    i32 128, label %18
    i32 132, label %65
    i32 131, label %67
    i32 130, label %120
    i32 129, label %126
  ]

18:                                               ; preds = %4
  %19 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %20 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %23 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %27 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %28 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.puc_bar* @puc_get_bar(%struct.puc_softc* %26, i32 %29)
  store %struct.puc_bar* %30, %struct.puc_bar** %12, align 8
  %31 = load %struct.puc_bar*, %struct.puc_bar** %12, align 8
  %32 = icmp eq %struct.puc_bar* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %5, align 4
  br label %132

35:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %39 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load %struct.puc_bar*, %struct.puc_bar** %12, align 8
  %44 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 9
  %48 = add nsw i32 4096, %47
  %49 = add nsw i32 %48, 146
  %50 = call i32 @bus_read_1(i32 %45, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.puc_bar*, %struct.puc_bar** %12, align 8
  %52 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %54, 9
  %56 = add nsw i32 4096, %55
  %57 = add nsw i32 %56, 146
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, 16
  %60 = call i32 @bus_write_1(i32 %53, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %36

64:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %132

65:                                               ; preds = %4
  %66 = load i64*, i64** %9, align 8
  store i64 512, i64* %66, align 8
  store i32 0, i32* %5, align 4
  br label %132

67:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %88, %67
  %69 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %70 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %81 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %80, i32 0, i32 1
  store i32 16, i32* %81, align 4
  %82 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %83 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64*, i64** %9, align 8
  store i64 %85, i64* %86, align 8
  store i32 0, i32* %5, align 4
  br label %132

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @PUC_PCI_BARS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %68, label %92

92:                                               ; preds = %88
  %93 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %94 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %95 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.puc_bar* @puc_get_bar(%struct.puc_softc* %93, i32 %96)
  store %struct.puc_bar* %97, %struct.puc_bar** %12, align 8
  %98 = load %struct.puc_bar*, %struct.puc_bar** %12, align 8
  %99 = icmp eq %struct.puc_bar* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %5, align 4
  br label %132

102:                                              ; preds = %92
  %103 = load %struct.puc_bar*, %struct.puc_bar** %12, align 8
  %104 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bus_read_1(i32 %105, i32 4)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %5, align 4
  br label %132

111:                                              ; preds = %102
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %114 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %116 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  store i32 0, i32* %5, align 4
  br label %132

120:                                              ; preds = %4
  %121 = load i32, i32* %8, align 4
  %122 = shl i32 %121, 9
  %123 = add nsw i32 4096, %122
  %124 = sext i32 %123 to i64
  %125 = load i64*, i64** %9, align 8
  store i64 %124, i64* %125, align 8
  store i32 0, i32* %5, align 4
  br label %132

126:                                              ; preds = %4
  %127 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %128 = load i64*, i64** %9, align 8
  store i64 %127, i64* %128, align 8
  store i32 0, i32* %5, align 4
  br label %132

129:                                              ; preds = %4
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %126, %120, %111, %109, %100, %79, %65, %64, %33
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.puc_bar* @puc_get_bar(%struct.puc_softc*, i32) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
