; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_get_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }

@WDCMSG_TARGET_GET_CAPABILITY = common dso_local global i32 0, align 4
@UATH_CMD_FLAG_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not read capability %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32, i32*)* @uath_get_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_get_capability(%struct.uath_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uath_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @htobe32(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  %12 = load i32, i32* @WDCMSG_TARGET_GET_CAPABILITY, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @UATH_CMD_FLAG_MAGIC, align 4
  %15 = call i32 @uath_cmd_read(%struct.uath_softc* %11, i32 %12, i32* %6, i32 4, i32* %13, i32 4, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  %20 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @be32toh(i32 %22)
  %24 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32toh(i32 %28)
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @uath_cmd_read(%struct.uath_softc*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
