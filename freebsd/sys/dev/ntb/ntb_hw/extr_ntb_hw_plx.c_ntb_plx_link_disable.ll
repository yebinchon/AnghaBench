; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_link_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_link_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_plx_link_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_link_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_plx_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ntb_plx_softc* @device_get_softc(i32 %7)
  store %struct.ntb_plx_softc* %8, %struct.ntb_plx_softc** %4, align 8
  %9 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %16 = call i32 @PLX_PORT_CONTROL(%struct.ntb_plx_softc* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @bus_read_4(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 7
  %26 = shl i32 1, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @bus_write_4(i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %14, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @PLX_PORT_CONTROL(%struct.ntb_plx_softc*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
