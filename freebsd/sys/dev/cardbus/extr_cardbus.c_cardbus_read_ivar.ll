; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardbus_devinfo = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@PCCARD_TPLFE_TYPE_LAN_NID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @cardbus_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardbus_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.cardbus_devinfo*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.cardbus_devinfo* @device_get_ivars(i32 %12)
  store %struct.cardbus_devinfo* %13, %struct.cardbus_devinfo** %10, align 8
  %14 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %10, align 8
  %15 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %38 [
    i32 128, label %18
  ]

18:                                               ; preds = %4
  %19 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %10, align 8
  %20 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCCARD_TPLFE_TYPE_LAN_NID, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %10, align 8
  %28 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = bitcast i64* %32 to i32**
  store i32* %31, i32** %33, align 8
  br label %44

34:                                               ; preds = %18
  %35 = load i64*, i64** %9, align 8
  %36 = bitcast i64* %35 to i32**
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i64*, i64** %9, align 8
  %43 = call i32 @pci_read_ivar(i32 %39, i32 %40, i32 %41, i64* %42)
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %38, %34
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.cardbus_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_ivar(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
