; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_ledstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_ledstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }

@UATH_DEBUG_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set led state %sconnected\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@WDCMSG_SET_LED_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32)* @uath_set_ledstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_set_ledstate(%struct.uath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %6 = load i32, i32* @UATH_DEBUG_LED, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i32 @DPRINTF(%struct.uath_softc* %5, i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @htobe32(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %15 = load i32, i32* @WDCMSG_SET_LED_STATE, align 4
  %16 = call i32 @uath_cmd_write(%struct.uath_softc* %14, i32 %15, i32* %4, i32 4, i32 0)
  ret i32 %16
}

declare dso_local i32 @DPRINTF(%struct.uath_softc*, i32, i8*, i8*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
