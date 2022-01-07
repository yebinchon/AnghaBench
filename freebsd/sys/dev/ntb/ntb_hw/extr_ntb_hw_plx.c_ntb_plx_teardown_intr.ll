; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i64, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ntb_plx_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_plx_teardown_intr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_plx_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ntb_plx_softc* @device_get_softc(i32 %4)
  store %struct.ntb_plx_softc* %5, %struct.ntb_plx_softc** %3, align 8
  %6 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %12 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %11, i32 4068, i32 15)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bus_teardown_intr(i32 %19, i64 %22, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bus_release_resource(i32 %27, i32 %28, i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %18, %13
  ret void
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @NTX_WRITE(%struct.ntb_plx_softc*, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
