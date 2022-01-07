; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_lpc_uart_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_lpc_uart_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.lpc_uart_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @lpc_uart_io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_uart_io_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.lpc_uart_softc*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load i8*, i8** %15, align 8
  %19 = bitcast i8* %18 to %struct.lpc_uart_softc*
  store %struct.lpc_uart_softc* %19, %struct.lpc_uart_softc** %17, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %17, align 8
  %22 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %83 [
    i32 1, label %26
    i32 2, label %45
  ]

26:                                               ; preds = %7
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %17, align 8
  %31 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @uart_read(i32 %32, i32 %33)
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  br label %44

36:                                               ; preds = %26
  %37 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %17, align 8
  %38 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uart_write(i32 %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %36, %29
  br label %84

45:                                               ; preds = %7
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %17, align 8
  %50 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @uart_read(i32 %51, i32 %52)
  %54 = load i32*, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %17, align 8
  %56 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @uart_read(i32 %57, i32 %59)
  %61 = shl i32 %60, 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %82

65:                                               ; preds = %45
  %66 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %17, align 8
  %67 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @uart_write(i32 %68, i32 %69, i32 %71)
  %73 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %17, align 8
  %74 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 8
  %81 = call i32 @uart_write(i32 %75, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %65, %48
  br label %84

83:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %85

84:                                               ; preds = %82, %44
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @uart_read(i32, i32) #1

declare dso_local i32 @uart_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
