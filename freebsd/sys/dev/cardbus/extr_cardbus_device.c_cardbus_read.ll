; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cardbus_devinfo* }
%struct.cardbus_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.uio = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @cardbus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardbus_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cardbus_devinfo*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cdev*, %struct.cdev** %5, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %10, align 8
  store %struct.cardbus_devinfo* %11, %struct.cardbus_devinfo** %8, align 8
  %12 = load %struct.uio*, %struct.uio** %6, align 8
  %13 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %8, align 8
  %16 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %8, align 8
  %23 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.uio*, %struct.uio** %6, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.uio*, %struct.uio** %6, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %8, align 8
  %34 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i32 @MIN(i32 %32, i64 %40)
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = call i32 @uiomove(i64 %29, i32 %41, %struct.uio* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %21, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @uiomove(i64, i32, %struct.uio*) #1

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
