; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_drain_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_drain_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelspi_softc = type { i64, i64, %struct.spi_command* }
%struct.spi_command = type { i64, i64, i64 }

@INTELSPI_SSPREG_SSDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intelspi_softc*)* @intelspi_drain_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intelspi_drain_rx_fifo(%struct.intelspi_softc* %0) #0 {
  %2 = alloca %struct.intelspi_softc*, align 8
  %3 = alloca %struct.spi_command*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.intelspi_softc* %0, %struct.intelspi_softc** %2, align 8
  %6 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %7 = call i32 @INTELSPI_ASSERT_LOCKED(%struct.intelspi_softc* %6)
  %8 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %8, i32 0, i32 2
  %10 = load %struct.spi_command*, %struct.spi_command** %9, align 8
  store %struct.spi_command* %10, %struct.spi_command** %3, align 8
  br label %11

11:                                               ; preds = %50, %1
  %12 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %21 = call i32 @intelspi_rxfifo_empty(%struct.intelspi_softc* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi i1 [ false, %11 ], [ %23, %19 ]
  br i1 %25, label %26, label %58

26:                                               ; preds = %24
  %27 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %28 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %32 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %37 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %42 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %5, align 8
  %45 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %46 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %40, %26
  %51 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %52 = load i32, i32* @INTELSPI_SSPREG_SSDR, align 4
  %53 = call i32 @INTELSPI_READ(%struct.intelspi_softc* %51, i32 %52)
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  br label %11

58:                                               ; preds = %24
  ret void
}

declare dso_local i32 @INTELSPI_ASSERT_LOCKED(%struct.intelspi_softc*) #1

declare dso_local i32 @intelspi_rxfifo_empty(%struct.intelspi_softc*) #1

declare dso_local i32 @INTELSPI_READ(%struct.intelspi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
