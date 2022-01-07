; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_validate_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_validate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_iores = type { i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_iores*, i64, i64*)* @bhnd_nvram_iores_validate_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_iores_validate_req(%struct.bhnd_nvram_iores* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_nvram_iores*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.bhnd_nvram_iores* %0, %struct.bhnd_nvram_iores** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %5, align 8
  %10 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %5, align 8
  %18 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64*, i64** %7, align 8
  store i64 0, i64* %22, align 8
  store i32 0, i32* %4, align 4
  br label %59

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %5, align 8
  %26 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = urem i64 %24, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @EFAULT, align 4
  store i32 %31, i32* %4, align 4
  br label %59

32:                                               ; preds = %23
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %5, align 8
  %36 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %37, %38
  %40 = call i64 @ummin(i64 %34, i64 %39)
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %5, align 8
  %45 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %32
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %5, align 8
  %52 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = urem i64 %50, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @EFAULT, align 4
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %48, %32
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %56, %30, %21, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @ummin(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
