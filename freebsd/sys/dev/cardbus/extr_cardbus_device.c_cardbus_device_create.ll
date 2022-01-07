; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_device_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardbus_softc = type { i32 }
%struct.cardbus_devinfo = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { %struct.cardbus_devinfo* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@cardbus_cdevsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cardbus%d.%d.cis\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cardbus%d.cis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cardbus_device_create(%struct.cardbus_softc* %0, %struct.cardbus_devinfo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cardbus_softc*, align 8
  %6 = alloca %struct.cardbus_devinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cardbus_softc* %0, %struct.cardbus_softc** %5, align 8
  store %struct.cardbus_devinfo* %1, %struct.cardbus_devinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %14 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %13, i32 0, i32 2
  %15 = call i32 @cardbus_device_buffer_cis(i32 %11, i32 %12, i32* %14)
  %16 = load %struct.cardbus_softc*, %struct.cardbus_softc** %5, align 8
  %17 = getelementptr inbounds %struct.cardbus_softc, %struct.cardbus_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_get_unit(i32 %18)
  %20 = shl i32 %19, 8
  %21 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %22 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %20, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load %struct.cardbus_softc*, %struct.cardbus_softc** %5, align 8
  %29 = getelementptr inbounds %struct.cardbus_softc, %struct.cardbus_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_get_unit(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %35 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_7__* @make_dev(i32* @cardbus_cdevsw, i64 %32, i32 0, i32 0, i32 438, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  %40 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %41 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %40, i32 0, i32 0
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %41, align 8
  %42 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %43 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %4
  %49 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %50 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @make_dev_alias(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %4
  %55 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %56 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %6, align 8
  %57 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store %struct.cardbus_devinfo* %55, %struct.cardbus_devinfo** %59, align 8
  ret i32 0
}

declare dso_local i32 @cardbus_device_buffer_cis(i32, i32, i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_7__* @make_dev(i32*, i64, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @make_dev_alias(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
