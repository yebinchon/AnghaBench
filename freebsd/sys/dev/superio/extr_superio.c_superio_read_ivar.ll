; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superio_devinfo = type { i64, i64, i64, i64, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @superio_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superio_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.superio_devinfo*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.superio_devinfo* @device_get_ivars(i32 %11)
  store %struct.superio_devinfo* %12, %struct.superio_devinfo** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %44 [
    i32 129, label %14
    i32 128, label %19
    i32 132, label %24
    i32 131, label %29
    i32 130, label %34
    i32 133, label %39
  ]

14:                                               ; preds = %4
  %15 = load %struct.superio_devinfo*, %struct.superio_devinfo** %10, align 8
  %16 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %9, align 8
  store i64 %17, i64* %18, align 8
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.superio_devinfo*, %struct.superio_devinfo** %10, align 8
  %21 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  br label %46

24:                                               ; preds = %4
  %25 = load %struct.superio_devinfo*, %struct.superio_devinfo** %10, align 8
  %26 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  br label %46

29:                                               ; preds = %4
  %30 = load %struct.superio_devinfo*, %struct.superio_devinfo** %10, align 8
  %31 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  br label %46

34:                                               ; preds = %4
  %35 = load %struct.superio_devinfo*, %struct.superio_devinfo** %10, align 8
  %36 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %9, align 8
  store i64 %37, i64* %38, align 8
  br label %46

39:                                               ; preds = %4
  %40 = load %struct.superio_devinfo*, %struct.superio_devinfo** %10, align 8
  %41 = getelementptr inbounds %struct.superio_devinfo, %struct.superio_devinfo* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  br label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @ENOENT, align 4
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %39, %34, %29, %24, %19, %14
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.superio_devinfo* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
