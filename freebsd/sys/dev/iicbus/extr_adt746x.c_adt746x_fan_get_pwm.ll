; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_fan_get_pwm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_fan_get_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt746x_fan = type { i32, i32 }
%struct.adt746x_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt746x_fan*)* @adt746x_fan_get_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt746x_fan_get_pwm(%struct.adt746x_fan* %0) #0 {
  %2 = alloca %struct.adt746x_fan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adt746x_softc*, align 8
  store %struct.adt746x_fan* %0, %struct.adt746x_fan** %2, align 8
  %7 = load %struct.adt746x_fan*, %struct.adt746x_fan** %2, align 8
  %8 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.adt746x_softc* @device_get_softc(i32 %9)
  store %struct.adt746x_softc* %10, %struct.adt746x_softc** %6, align 8
  %11 = load %struct.adt746x_fan*, %struct.adt746x_fan** %2, align 8
  %12 = getelementptr inbounds %struct.adt746x_fan, %struct.adt746x_fan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.adt746x_softc*, %struct.adt746x_softc** %6, align 8
  %15 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.adt746x_softc*, %struct.adt746x_softc** %6, align 8
  %18 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @adt746x_read(i32 %16, i32 %19, i32 %20, i32* %3)
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 39
  %24 = sdiv i32 %23, 100
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.adt746x_softc* @device_get_softc(i32) #1

declare dso_local i32 @adt746x_read(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
