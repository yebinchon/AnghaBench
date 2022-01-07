; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_modem_softc = type { i32*, i64*, i32, i32 }

@g_modem_mode = common dso_local global i32 0, align 4
@g_modem_pattern_data = common dso_local global i32 0, align 4
@G_MODEM_MAX_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Timeout %p\0A\00", align 1
@G_MODEM_INTR_DT = common dso_local global i64 0, align 8
@G_MODEM_BULK_WR = common dso_local global i64 0, align 8
@G_MODEM_BULK_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_modem_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_modem_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_modem_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.g_modem_softc*
  store %struct.g_modem_softc* %5, %struct.g_modem_softc** %3, align 8
  %6 = load i32, i32* @g_modem_mode, align 4
  %7 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %10 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* @g_modem_pattern_data, align 4
  %13 = call i32 @memcpy(i64* %11, i32 %12, i32 8)
  %14 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %15 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* @G_MODEM_MAX_STRLEN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @strlen(i64* %23)
  %25 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %28 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @G_MODEM_INTR_DT, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %35 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @G_MODEM_BULK_WR, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usbd_transfer_start(i32 %39)
  %41 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %42 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @G_MODEM_BULK_RD, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usbd_transfer_start(i32 %46)
  %48 = load %struct.g_modem_softc*, %struct.g_modem_softc** %3, align 8
  %49 = call i32 @g_modem_timeout_reset(%struct.g_modem_softc* %48)
  ret void
}

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @g_modem_timeout_reset(%struct.g_modem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
