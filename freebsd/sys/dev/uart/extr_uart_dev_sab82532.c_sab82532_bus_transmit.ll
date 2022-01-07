; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@SAB_STAR = common dso_local global i32 0, align 4
@SAB_STAR_XFW = common dso_local global i32 0, align 4
@SAB_XFIFO = common dso_local global i64 0, align 8
@SAB_STAR_CEC = common dso_local global i32 0, align 4
@SAB_CMDR = common dso_local global i64 0, align 8
@SAB_CMDR_XF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sab82532_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 4
  store %struct.uart_bas* %6, %struct.uart_bas** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @uart_lock(i32 %9)
  br label %11

11:                                               ; preds = %19, %1
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = load i32, i32* @SAB_STAR, align 4
  %14 = call i32 @uart_getreg(%struct.uart_bas* %12, i32 %13)
  %15 = load i32, i32* @SAB_STAR_XFW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %11

20:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %29 = load i64, i64* @SAB_XFIFO, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uart_setreg(%struct.uart_bas* %28, i64 %32, i32 %39)
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %46 = call i32 @uart_barrier(%struct.uart_bas* %45)
  br label %47

47:                                               ; preds = %54, %44
  %48 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %49 = load i32, i32* @SAB_STAR, align 4
  %50 = call i32 @uart_getreg(%struct.uart_bas* %48, i32 %49)
  %51 = load i32, i32* @SAB_STAR_CEC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %47

55:                                               ; preds = %47
  %56 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %57 = load i64, i64* @SAB_CMDR, align 8
  %58 = load i32, i32* @SAB_CMDR_XF, align 4
  %59 = call i32 @uart_setreg(%struct.uart_bas* %56, i64 %57, i32 %58)
  %60 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %61 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %63 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @uart_unlock(i32 %64)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i64, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
