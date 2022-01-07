; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.uath_write_mac = type { i64, i8*, i8* }

@WDCMSG_TARGET_SET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not write register 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i8*, i8*)* @uath_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_config(%struct.uath_softc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.uath_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uath_write_mac, align 8
  %8 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @htobe32(i8* %9)
  %11 = getelementptr inbounds %struct.uath_write_mac, %struct.uath_write_mac* %7, i32 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = call i8* @htobe32(i8* null)
  %13 = getelementptr inbounds %struct.uath_write_mac, %struct.uath_write_mac* %7, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @htobe32(i8* %14)
  %16 = getelementptr inbounds %struct.uath_write_mac, %struct.uath_write_mac* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8**
  store i8* %15, i8** %18, align 8
  %19 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %20 = load i32, i32* @WDCMSG_TARGET_SET_CONFIG, align 4
  %21 = call i32 @uath_cmd_write(%struct.uath_softc* %19, i32 %20, %struct.uath_write_mac* %7, i32 24, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %26 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %24, %3
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i8* @htobe32(i8*) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, %struct.uath_write_mac*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
