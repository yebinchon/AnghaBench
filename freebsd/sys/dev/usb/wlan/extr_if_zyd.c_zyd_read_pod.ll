; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_read_pod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_read_pod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ZYD_EEPROM_POD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*)* @zyd_read_pod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_read_pod(%struct.zyd_softc* %0) #0 {
  %2 = alloca %struct.zyd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %2, align 8
  %5 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %6 = load i32, i32* @ZYD_EEPROM_POD, align 4
  %7 = call i32 @zyd_read32_m(%struct.zyd_softc* %5, i32 %6, i32* %4)
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 15
  %10 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 1
  %15 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %16 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 7
  %19 = and i32 %18, 1
  %20 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %21 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 1
  %25 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %26 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 13
  %29 = and i32 %28, 1
  %30 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 15
  %35 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %36 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 21
  %39 = and i32 %38, 1
  %40 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %41 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 31
  %44 = and i32 %43, 1
  %45 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %46 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 16777216
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 536870912
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %50, %1
  %55 = phi i1 [ false, %1 ], [ %53, %50 ]
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 1
  %58 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %59 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @zyd_read32_m(%struct.zyd_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
