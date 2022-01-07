; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_rxfifo_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_rxfifo_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.TYPE_2__, %struct.fifo }
%struct.TYPE_2__ = type { i64 }
%struct.fifo = type { i32, i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @rxfifo_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxfifo_putchar(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fifo*, align 8
  %7 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 2
  store %struct.fifo* %9, %struct.fifo** %6, align 8
  %10 = load %struct.fifo*, %struct.fifo** %6, align 8
  %11 = getelementptr inbounds %struct.fifo, %struct.fifo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.fifo*, %struct.fifo** %6, align 8
  %14 = getelementptr inbounds %struct.fifo, %struct.fifo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.fifo*, %struct.fifo** %6, align 8
  %20 = getelementptr inbounds %struct.fifo, %struct.fifo* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.fifo*, %struct.fifo** %6, align 8
  %23 = getelementptr inbounds %struct.fifo, %struct.fifo* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %struct.fifo*, %struct.fifo** %6, align 8
  %27 = getelementptr inbounds %struct.fifo, %struct.fifo* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  %30 = load %struct.fifo*, %struct.fifo** %6, align 8
  %31 = getelementptr inbounds %struct.fifo, %struct.fifo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = urem i64 %29, %33
  %35 = load %struct.fifo*, %struct.fifo** %6, align 8
  %36 = getelementptr inbounds %struct.fifo, %struct.fifo* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.fifo*, %struct.fifo** %6, align 8
  %38 = getelementptr inbounds %struct.fifo, %struct.fifo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %42 = call i32 @rxfifo_available(%struct.uart_softc* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %17
  %45 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %46 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mevent_disable(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %59

59:                                               ; preds = %50, %44
  br label %60

60:                                               ; preds = %59, %17
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @rxfifo_available(%struct.uart_softc*) #1

declare dso_local i32 @mevent_disable(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
