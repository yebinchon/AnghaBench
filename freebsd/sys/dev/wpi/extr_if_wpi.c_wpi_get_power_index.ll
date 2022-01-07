; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_get_power_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_get_power_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32, i32* }
%struct.wpi_power_group = type { i32, i32, %struct.wpi_power_sample* }
%struct.wpi_power_sample = type { i32, i32 }

@WPI_RIDX_CCK1 = common dso_local global i32 0, align 4
@WPI_MAX_PWR_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpi_softc*, %struct.wpi_power_group*, i64, i32, i32)* @wpi_get_power_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_get_power_index(%struct.wpi_softc* %0, %struct.wpi_power_group* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpi_softc*, align 8
  %8 = alloca %struct.wpi_power_group*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpi_power_sample*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wpi_softc* %0, %struct.wpi_softc** %7, align 8
  store %struct.wpi_power_group* %1, %struct.wpi_power_group** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.wpi_power_group*, %struct.wpi_power_group** %8, align 8
  %16 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %41 [
    i32 130, label %20
    i32 129, label %27
    i32 128, label %34
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 5, i32 0
  %25 = load i32, i32* %13, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %13, align 4
  br label %41

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 10, i32 7
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %41

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 12, i32 9
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %5, %34, %27, %20
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.wpi_softc*, %struct.wpi_softc** %7, align 8
  %44 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @min(i32 %42, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.wpi_power_group*, %struct.wpi_power_group** %8, align 8
  %51 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %50, i32 0, i32 2
  %52 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %51, align 8
  store %struct.wpi_power_sample* %52, %struct.wpi_power_sample** %12, align 8
  br label %53

53:                                               ; preds = %69, %41
  %54 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %55 = load %struct.wpi_power_group*, %struct.wpi_power_group** %8, align 8
  %56 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %55, i32 0, i32 2
  %57 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %56, align 8
  %58 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %57, i64 3
  %59 = icmp ult %struct.wpi_power_sample* %54, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %63 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %62, i64 1
  %64 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %72

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %71 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %70, i32 1
  store %struct.wpi_power_sample* %71, %struct.wpi_power_sample** %12, align 8
  br label %53

72:                                               ; preds = %67, %53
  %73 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %74 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %73, i64 0
  %75 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %79 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %78, i64 0
  %80 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %77, %81
  %83 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %84 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %83, i64 1
  %85 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %88 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %87, i64 0
  %89 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %86, %90
  %92 = mul nsw i32 %82, %91
  %93 = mul nsw i32 524288, %92
  %94 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %95 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %94, i64 1
  %96 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wpi_power_sample*, %struct.wpi_power_sample** %12, align 8
  %99 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %98, i64 0
  %100 = getelementptr inbounds %struct.wpi_power_sample, %struct.wpi_power_sample* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %97, %101
  %103 = sdiv i32 %93, %102
  %104 = add nsw i32 %103, 262144
  %105 = sdiv i32 %104, 524288
  %106 = add nsw i32 %76, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.wpi_softc*, %struct.wpi_softc** %7, align 8
  %108 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.wpi_power_group*, %struct.wpi_power_group** %8, align 8
  %111 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = mul nsw i32 %113, 11
  %115 = sdiv i32 %114, 100
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @WPI_RIDX_CCK1, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %72
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 10
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %121, %72
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %136

128:                                              ; preds = %124
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @WPI_MAX_PWR_INDEX, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @WPI_MAX_PWR_INDEX, align 4
  store i32 %133, i32* %6, align 4
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %132, %127
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
