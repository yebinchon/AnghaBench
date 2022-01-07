; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunkbd_softc = type { i64, i32*, i32*, i64, i64* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sunkbd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunkbd_check(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sunkbd_softc*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @KBD_IS_ACTIVE(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.sunkbd_softc*
  store %struct.sunkbd_softc* %12, %struct.sunkbd_softc** %4, align 8
  %13 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %4, align 8
  %14 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %10
  %20 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %4, align 8
  %21 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %4, align 8
  %26 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @uart_rx_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %24, %19
  %33 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %4, align 8
  %34 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %4, align 8
  %39 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @uart_rxready(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %42, %37, %32
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %48, %30, %17, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @KBD_IS_ACTIVE(i32*) #1

declare dso_local i32 @uart_rx_empty(i32*) #1

declare dso_local i64 @uart_rxready(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
