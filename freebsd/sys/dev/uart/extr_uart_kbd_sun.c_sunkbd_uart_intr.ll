; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_uart_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_uart_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunkbd_softc = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_8__*, i32, i32)* }
%struct.TYPE_7__ = type { i32, i64 }

@SER_INT_MASK = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sunkbd_uart_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunkbd_uart_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sunkbd_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sunkbd_softc*
  store %struct.sunkbd_softc* %6, %struct.sunkbd_softc** %3, align 8
  %7 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @atomic_readandclear_32(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SER_INT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %56

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SER_INT_RXREADY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %31, i32 0, i32 0
  %33 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_8__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %36, i32 0, i32 0
  %38 = call i64 @KBD_IS_BUSY(%struct.TYPE_8__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %44, align 8
  %46 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %47 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %46, i32 0, i32 0
  %48 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %49 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %50 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %45(%struct.TYPE_8__* %47, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %40, %35, %30
  br label %56

56:                                               ; preds = %13, %24, %55, %25
  ret void
}

declare dso_local i32 @atomic_readandclear_32(i32*) #1

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_8__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
