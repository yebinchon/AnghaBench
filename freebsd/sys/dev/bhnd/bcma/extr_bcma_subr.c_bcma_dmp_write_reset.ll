; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dmp_write_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dmp_write_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@BCMA_DMP_RESETCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_dmp_write_reset(i32 %0, %struct.bcma_devinfo* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcma_devinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.bcma_devinfo* %1, %struct.bcma_devinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %10 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  store i32 %14, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %17 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @BCMA_DMP_RESETCTRL, align 4
  %20 = call i64 @bhnd_bus_read_4(i32* %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %27 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @BCMA_DMP_RESETCTRL, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @bhnd_bus_write_4(i32* %28, i32 %29, i64 %30)
  %32 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %33 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @BCMA_DMP_RESETCTRL, align 4
  %36 = call i64 @bhnd_bus_read_4(i32* %34, i32 %35)
  %37 = call i32 @DELAY(i32 10)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %40 = call i32 @bcma_dmp_wait_reset(i32 %38, %struct.bcma_devinfo* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %25, %24, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @bhnd_bus_read_4(i32*, i32) #1

declare dso_local i32 @bhnd_bus_write_4(i32*, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bcma_dmp_wait_reset(i32, %struct.bcma_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
