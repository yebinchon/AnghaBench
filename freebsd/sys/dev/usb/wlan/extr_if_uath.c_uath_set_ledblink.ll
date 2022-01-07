; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_ledblink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_ledblink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.uath_cmd_ledblink = type { i8*, i8*, i8*, i8* }

@UATH_DEBUG_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set %s led %s (blink)\0A\00", align 1
@UATH_LED_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"activity\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@WDCMSG_SET_LED_BLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32, i32, i32, i32)* @uath_set_ledblink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_set_ledblink(%struct.uath_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uath_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uath_cmd_ledblink, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @htobe32(i32 %12)
  %14 = getelementptr inbounds %struct.uath_cmd_ledblink, %struct.uath_cmd_ledblink* %11, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i8* @htobe32(i32 %15)
  %17 = getelementptr inbounds %struct.uath_cmd_ledblink, %struct.uath_cmd_ledblink* %11, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i8* @htobe32(i32 %18)
  %20 = getelementptr inbounds %struct.uath_cmd_ledblink, %struct.uath_cmd_ledblink* %11, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i8* @htobe32(i32 %21)
  %23 = getelementptr inbounds %struct.uath_cmd_ledblink, %struct.uath_cmd_ledblink* %11, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.uath_softc*, %struct.uath_softc** %6, align 8
  %25 = load i32, i32* @UATH_DEBUG_LED, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @UATH_LED_LINK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %35 = call i32 @DPRINTF(%struct.uath_softc* %24, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %34)
  %36 = load %struct.uath_softc*, %struct.uath_softc** %6, align 8
  %37 = load i32, i32* @WDCMSG_SET_LED_BLINK, align 4
  %38 = call i32 @uath_cmd_write(%struct.uath_softc* %36, i32 %37, %struct.uath_cmd_ledblink* %11, i32 32, i32 0)
  ret i32 %38
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @DPRINTF(%struct.uath_softc*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, %struct.uath_cmd_ledblink*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
