; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_devinfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @ow_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ow_devinfo*, align 8
  %11 = alloca i32**, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.ow_devinfo* @device_get_ivars(i32 %12)
  store %struct.ow_devinfo* %13, %struct.ow_devinfo** %10, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %28 [
    i32 129, label %15
    i32 128, label %22
  ]

15:                                               ; preds = %4
  %16 = load %struct.ow_devinfo*, %struct.ow_devinfo** %10, align 8
  %17 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %9, align 8
  store i64 %20, i64* %21, align 8
  br label %30

22:                                               ; preds = %4
  %23 = load i64*, i64** %9, align 8
  %24 = bitcast i64* %23 to i32**
  store i32** %24, i32*** %11, align 8
  %25 = load %struct.ow_devinfo*, %struct.ow_devinfo** %10, align 8
  %26 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %25, i32 0, i32 0
  %27 = load i32**, i32*** %11, align 8
  store i32* %26, i32** %27, align 8
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %22, %15
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.ow_devinfo* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
