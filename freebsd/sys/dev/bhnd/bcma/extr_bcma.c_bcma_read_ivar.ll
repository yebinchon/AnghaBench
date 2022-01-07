; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bhnd_core_info }
%struct.bhnd_core_info = type { i64, i64, i64, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @bcma_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.bcma_devinfo*, align 8
  %11 = alloca %struct.bhnd_core_info*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.bcma_devinfo* @device_get_ivars(i32 %12)
  store %struct.bcma_devinfo* %13, %struct.bcma_devinfo** %10, align 8
  %14 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %10, align 8
  %15 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.bhnd_core_info* %17, %struct.bhnd_core_info** %11, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %66 [
    i32 129, label %19
    i32 134, label %24
    i32 131, label %29
    i32 133, label %34
    i32 128, label %38
    i32 132, label %45
    i32 136, label %50
    i32 135, label %55
    i32 130, label %60
  ]

19:                                               ; preds = %4
  %20 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %21 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %5, align 4
  br label %68

24:                                               ; preds = %4
  %25 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %26 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  store i32 0, i32* %5, align 4
  br label %68

29:                                               ; preds = %4
  %30 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %31 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %68

34:                                               ; preds = %4
  %35 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %36 = call i64 @bhnd_core_class(%struct.bhnd_core_info* %35)
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %5, align 4
  br label %68

38:                                               ; preds = %4
  %39 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %40 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bhnd_vendor_name(i64 %41)
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %68

45:                                               ; preds = %4
  %46 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %47 = call i32 @bhnd_core_name(%struct.bhnd_core_info* %46)
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  store i32 0, i32* %5, align 4
  br label %68

50:                                               ; preds = %4
  %51 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %52 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %5, align 4
  br label %68

55:                                               ; preds = %4
  %56 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %11, align 8
  %57 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  store i32 0, i32* %5, align 4
  br label %68

60:                                               ; preds = %4
  %61 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %10, align 8
  %62 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64*, i64** %9, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %5, align 4
  br label %68

66:                                               ; preds = %4
  %67 = load i32, i32* @ENOENT, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %60, %55, %50, %45, %38, %34, %29, %24, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @bhnd_core_class(%struct.bhnd_core_info*) #1

declare dso_local i32 @bhnd_vendor_name(i64) #1

declare dso_local i32 @bhnd_core_name(%struct.bhnd_core_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
