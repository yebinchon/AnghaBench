; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunkbd_softc = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_6__*, i32, i32)* }

@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sunkbd_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunkbd_repeat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sunkbd_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sunkbd_softc*
  store %struct.sunkbd_softc* %5, %struct.sunkbd_softc** %3, align 8
  %6 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %6, i32 0, i32 2
  %8 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_6__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %11, i32 0, i32 2
  %13 = call i64 @KBD_IS_BUSY(%struct.TYPE_6__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %24 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %26, align 8
  %28 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %28, i32 0, i32 2
  %30 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %31 = load %struct.sunkbd_softc*, %struct.sunkbd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.sunkbd_softc, %struct.sunkbd_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %27(%struct.TYPE_6__* %29, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %20, %15
  br label %38

38:                                               ; preds = %37, %10, %1
  ret void
}

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_6__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
