; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_cfg_set_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_cfg_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uvscom_softc* }
%struct.uvscom_softc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"onoff = %d\0A\00", align 1
@UVSCOM_RTS = common dso_local global i32 0, align 4
@UVSCOM_LINE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uvscom_cfg_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvscom_cfg_set_rts(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uvscom_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 0
  %8 = load %struct.uvscom_softc*, %struct.uvscom_softc** %7, align 8
  store %struct.uvscom_softc* %8, %struct.uvscom_softc** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @UVSCOM_RTS, align 4
  %15 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %16 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @UVSCOM_RTS, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %23 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %28 = load i32, i32* @UVSCOM_LINE_CTL, align 4
  %29 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @uvscom_cfg_write(%struct.uvscom_softc* %27, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @uvscom_cfg_write(%struct.uvscom_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
