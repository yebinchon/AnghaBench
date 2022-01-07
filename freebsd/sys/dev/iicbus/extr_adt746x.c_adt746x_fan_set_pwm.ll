; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_fan_set_pwm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_fan_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt746x_fan = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.adt746x_softc = type { i32, i32 }

@ADT746X_MANUAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt746x_fan*, i32)* @adt746x_fan_set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt746x_fan_set_pwm(%struct.adt746x_fan* %0, i32 %1) #0 {
  %3 = alloca %struct.adt746x_fan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adt746x_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.adt746x_fan* %0, %struct.adt746x_fan** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.adt746x_fan*, %struct.adt746x_fan** %3, align 8
  %11 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.adt746x_softc* @device_get_softc(i32 %12)
  store %struct.adt746x_softc* %13, %struct.adt746x_softc** %8, align 8
  %14 = load %struct.adt746x_fan*, %struct.adt746x_fan** %3, align 8
  %15 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @max(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.adt746x_fan*, %struct.adt746x_fan** %3, align 8
  %21 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @min(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.adt746x_fan*, %struct.adt746x_fan** %3, align 8
  %27 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.adt746x_fan*, %struct.adt746x_fan** %3, align 8
  %30 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 100
  %34 = sdiv i32 %33, 39
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = sub nsw i32 %34, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.adt746x_fan*, %struct.adt746x_fan** %3, align 8
  %42 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.adt746x_softc*, %struct.adt746x_softc** %8, align 8
  %44 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.adt746x_softc*, %struct.adt746x_softc** %8, align 8
  %47 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @adt746x_read(i32 %45, i32 %48, i32 %49, i32* %6)
  %51 = load i32, i32* @ADT746X_MANUAL_MASK, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.adt746x_softc*, %struct.adt746x_softc** %8, align 8
  %55 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.adt746x_softc*, %struct.adt746x_softc** %8, align 8
  %58 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @adt746x_write(i32 %56, i32 %59, i32 %60, i32* %6)
  %62 = load %struct.adt746x_softc*, %struct.adt746x_softc** %8, align 8
  %63 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.adt746x_softc*, %struct.adt746x_softc** %8, align 8
  %66 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @adt746x_write(i32 %64, i32 %67, i32 %68, i32* %9)
  ret i32 0
}

declare dso_local %struct.adt746x_softc* @device_get_softc(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @adt746x_read(i32, i32, i32, i32*) #1

declare dso_local i32 @adt746x_write(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
