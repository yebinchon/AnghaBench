; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_ivars = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @mmc_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.mmc_ivars*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.mmc_ivars* @device_get_ivars(i32 %11)
  store %struct.mmc_ivars* %12, %struct.mmc_ivars** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %14 [
    i32 129, label %16
    i32 138, label %22
    i32 134, label %28
    i32 132, label %33
    i32 130, label %38
    i32 128, label %41
    i32 131, label %45
    i32 136, label %50
    i32 140, label %55
    i32 143, label %60
    i32 137, label %65
    i32 135, label %70
    i32 139, label %74
    i32 133, label %79
    i32 142, label %84
    i32 141, label %90
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %97

16:                                               ; preds = %4
  %17 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %18 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %9, align 8
  store i64 %20, i64* %21, align 8
  br label %96

22:                                               ; preds = %4
  %23 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %24 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  br label %96

28:                                               ; preds = %4
  %29 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %30 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  br label %96

33:                                               ; preds = %4
  %34 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %35 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  br label %96

38:                                               ; preds = %4
  %39 = load i64, i64* @MMC_SECTOR_SIZE, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  br label %96

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @mmcbr_get_clock(i32 %42)
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %96

45:                                               ; preds = %4
  %46 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %47 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  br label %96

50:                                               ; preds = %4
  %51 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %52 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  br label %96

55:                                               ; preds = %4
  %56 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %57 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  br label %96

60:                                               ; preds = %4
  %61 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %62 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  br label %96

65:                                               ; preds = %4
  %66 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %67 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  br label %96

70:                                               ; preds = %4
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @mmcbr_get_max_data(i32 %71)
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  br label %96

74:                                               ; preds = %4
  %75 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %76 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %9, align 8
  store i64 %77, i64* %78, align 8
  br label %96

79:                                               ; preds = %4
  %80 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %81 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  br label %96

84:                                               ; preds = %4
  %85 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %86 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %85, i32 0, i32 9
  %87 = load i8*, i8** %86, align 8
  %88 = load i64*, i64** %9, align 8
  %89 = bitcast i64* %88 to i8**
  store i8* %87, i8** %89, align 8
  br label %96

90:                                               ; preds = %4
  %91 = load %struct.mmc_ivars*, %struct.mmc_ivars** %10, align 8
  %92 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %91, i32 0, i32 10
  %93 = load i8*, i8** %92, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = bitcast i64* %94 to i8**
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %90, %84, %79, %74, %70, %65, %60, %55, %50, %45, %41, %38, %33, %28, %22, %16
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %14
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.mmc_ivars* @device_get_ivars(i32) #1

declare dso_local i64 @mmcbr_get_clock(i32) #1

declare dso_local i64 @mmcbr_get_max_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
