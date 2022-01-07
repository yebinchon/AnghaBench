; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8187b_cmd_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8187b_cmd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32 }

@URTW_CMD = common dso_local global i32 0, align 4
@URTW_CMD_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*)* @urtw_8187b_cmd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_8187b_cmd_reset(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %7 = load i32, i32* @URTW_CMD, align 4
  %8 = call i32 @urtw_read8_m(%struct.urtw_softc* %6, i32 %7, i32* %4)
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 2
  %11 = load i32, i32* @URTW_CMD_RST, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %14 = load i32, i32* @URTW_CMD, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @urtw_write8_m(%struct.urtw_softc* %13, i32 %14, i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %33, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 20
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %22 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %21, i32 0, i32 1
  %23 = call i32 @usb_pause_mtx(i32* %22, i32 2)
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %25 = load i32, i32* @URTW_CMD, align 4
  %26 = call i32 @urtw_read8_m(%struct.urtw_softc* %24, i32 %25, i32* %4)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @URTW_CMD_RST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %17

36:                                               ; preds = %31, %17
  %37 = load i32, i32* %3, align 4
  %38 = icmp sge i32 %37, 20
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %41 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
