; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_intr_sigchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_intr_sigchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PPS_CAPTUREBOTH = common dso_local global i32 0, align 4
@SER_MASK_STATE = common dso_local global i32 0, align 4
@SER_INT_SIGMASK = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uart_intr_sigchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_intr_sigchg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.uart_softc*
  store %struct.uart_softc* %8, %struct.uart_softc** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = call i32 @UART_GETSIG(%struct.uart_softc* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @uart_pps_process(%struct.uart_softc* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  br label %24

24:                                               ; preds = %37, %23
  %25 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %26 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SER_MASK_STATE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SER_INT_SIGMASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @atomic_cmpset_32(i32* %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %24, label %45

45:                                               ; preds = %37
  %46 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %52 = load i32, i32* @SER_INT_SIGCHG, align 4
  %53 = call i32 @uart_sched_softih(%struct.uart_softc* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  ret i32 1
}

declare dso_local i32 @UART_GETSIG(%struct.uart_softc*) #1

declare dso_local i32 @uart_pps_process(%struct.uart_softc*, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @uart_sched_softih(%struct.uart_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
