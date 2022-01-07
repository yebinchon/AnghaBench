; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_cfg_set_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_cfg_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.u3g_softc* }
%struct.u3g_softc = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"onoff = %d\0A\00", align 1
@UCDC_LINE_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @u3g_cfg_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u3g_cfg_set_rts(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.u3g_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 1
  %8 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  store %struct.u3g_softc* %8, %struct.u3g_softc** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @UCDC_LINE_RTS, align 4
  %15 = load %struct.u3g_softc*, %struct.u3g_softc** %5, align 8
  %16 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %14
  store i32 %23, i32* %21, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i32, i32* @UCDC_LINE_RTS, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.u3g_softc*, %struct.u3g_softc** %5, align 8
  %28 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %26
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %24, %13
  %37 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %38 = call i32 @u3g_cfg_set_line(%struct.ucom_softc* %37)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @u3g_cfg_set_line(%struct.ucom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
