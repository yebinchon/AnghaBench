; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_iobus.c_iobus_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iobus_devinfo = type { i64, i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @iobus_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iobus_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.iobus_devinfo*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.iobus_devinfo* @device_get_ivars(i32 %11)
  store %struct.iobus_devinfo* %12, %struct.iobus_devinfo** %10, align 8
  %13 = icmp eq %struct.iobus_devinfo* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %5, align 4
  br label %43

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %40 [
    i32 130, label %18
    i32 131, label %23
    i32 129, label %29
    i32 128, label %34
  ]

18:                                               ; preds = %16
  %19 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %10, align 8
  %20 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 %21, i64* %22, align 8
  br label %42

23:                                               ; preds = %16
  %24 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %10, align 8
  %25 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  br label %42

29:                                               ; preds = %16
  %30 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %10, align 8
  %31 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  br label %42

34:                                               ; preds = %16
  %35 = load %struct.iobus_devinfo*, %struct.iobus_devinfo** %10, align 8
  %36 = getelementptr inbounds %struct.iobus_devinfo, %struct.iobus_devinfo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  br label %42

40:                                               ; preds = %16
  %41 = load i32, i32* @ENOENT, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %34, %29, %23, %18
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %40, %14
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.iobus_devinfo* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
