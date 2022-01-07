; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_efuse_read_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_efuse_read_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32 }

@R92S_EFUSE_CTRL = common dso_local global i32 0, align 4
@R92S_EFUSE_CTRL_ADDR = common dso_local global i32 0, align 4
@R92S_EFUSE_CTRL_VALID = common dso_local global i32 0, align 4
@R92S_EFUSE_CTRL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not read efuse byte at address 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsu_softc*, i32)* @rsu_efuse_read_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_efuse_read_1(%struct.rsu_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %9 = load i32, i32* @R92S_EFUSE_CTRL, align 4
  %10 = call i32 @rsu_read_4(%struct.rsu_softc* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @R92S_EFUSE_CTRL_ADDR, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @RW(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @R92S_EFUSE_CTRL_VALID, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %20 = load i32, i32* @R92S_EFUSE_CTRL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rsu_write_4(%struct.rsu_softc* %19, i32 %20, i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %41, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 100
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %28 = load i32, i32* @R92S_EFUSE_CTRL, align 4
  %29 = call i32 @rsu_read_4(%struct.rsu_softc* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @R92S_EFUSE_CTRL_VALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @R92S_EFUSE_CTRL_DATA, align 4
  %37 = call i32 @MS(i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %26
  %39 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %40 = call i32 @rsu_ms_delay(%struct.rsu_softc* %39, i32 1)
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.rsu_softc*, %struct.rsu_softc** %4, align 8
  %46 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 255, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %34
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @rsu_read_4(%struct.rsu_softc*, i32) #1

declare dso_local i32 @RW(i32, i32, i32) #1

declare dso_local i32 @rsu_write_4(%struct.rsu_softc*, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @rsu_ms_delay(%struct.rsu_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
