; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_fw_iocmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_fw_iocmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32 }

@R92S_IOCMD_CTRL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsu_softc*, i32)* @rsu_fw_iocmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_fw_iocmd(%struct.rsu_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %8 = load i32, i32* @R92S_IOCMD_CTRL, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @rsu_write_4(%struct.rsu_softc* %7, i32 %8, i32 %9)
  %11 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %12 = call i32 @rsu_ms_delay(%struct.rsu_softc* %11, i32 1)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 50
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %18 = load i32, i32* @R92S_IOCMD_CTRL, align 4
  %19 = call i64 @rsu_read_4(%struct.rsu_softc* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %24 = call i32 @rsu_ms_delay(%struct.rsu_softc* %23, i32 1)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @rsu_write_4(%struct.rsu_softc*, i32, i32) #1

declare dso_local i32 @rsu_ms_delay(%struct.rsu_softc*, i32) #1

declare dso_local i64 @rsu_read_4(%struct.rsu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
