; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LCR_DLAB = common dso_local global i32 0, align 4
@REG_DLL = common dso_local global i32 0, align 4
@REG_DLH = common dso_local global i32 0, align 4
@FCR_ENABLE = common dso_local global i32 0, align 4
@IIR_FIFO_MASK = common dso_local global i32 0, align 4
@IIR_TXRDY = common dso_local global i32 0, align 4
@LSR_TEMT = common dso_local global i32 0, align 4
@LSR_THRE = common dso_local global i32 0, align 4
@LSR_RXRDY = common dso_local global i32 0, align 4
@LSR_OE = common dso_local global i32 0, align 4
@MSR_DELTA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_read(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 10
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LCR_DLAB, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @REG_DLL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %23 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %126

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @REG_DLH, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %31 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %126

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %124 [
    i32 135, label %36
    i32 134, label %39
    i32 133, label %43
    i32 132, label %68
    i32 130, label %72
    i32 131, label %76
    i32 129, label %110
    i32 128, label %120
  ]

36:                                               ; preds = %34
  %37 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %38 = call i32 @rxfifo_getchar(%struct.uart_softc* %37)
  store i32 %38, i32* %7, align 4
  br label %125

39:                                               ; preds = %34
  %40 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %41 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  br label %125

43:                                               ; preds = %34
  %44 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FCR_ENABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @IIR_FIFO_MASK, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  store i32 %54, i32* %5, align 4
  %55 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %56 = call i32 @uart_intr_reason(%struct.uart_softc* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IIR_TXRDY, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %62 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %61, i32 0, i32 5
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %7, align 4
  br label %125

68:                                               ; preds = %34
  %69 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %70 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %125

72:                                               ; preds = %34
  %73 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %74 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  br label %125

76:                                               ; preds = %34
  %77 = load i32, i32* @LSR_TEMT, align 4
  %78 = load i32, i32* @LSR_THRE, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %81 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %85 = call i32 @rxfifo_numchars(%struct.uart_softc* %84)
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i32, i32* @LSR_RXRDY, align 4
  %89 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %90 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %100

93:                                               ; preds = %76
  %94 = load i32, i32* @LSR_RXRDY, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %97 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %102 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @LSR_OE, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %107 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %125

110:                                              ; preds = %34
  %111 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %112 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* @MSR_DELTA_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %117 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %125

120:                                              ; preds = %34
  %121 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %122 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %7, align 4
  br label %125

124:                                              ; preds = %34
  store i32 255, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %120, %110, %100, %72, %68, %63, %39, %36
  br label %126

126:                                              ; preds = %125, %29, %21
  %127 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %128 = call i32 @uart_toggle_intr(%struct.uart_softc* %127)
  %129 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %130 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %129, i32 0, i32 10
  %131 = call i32 @pthread_mutex_unlock(i32* %130)
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @rxfifo_getchar(%struct.uart_softc*) #1

declare dso_local i32 @uart_intr_reason(%struct.uart_softc*) #1

declare dso_local i32 @rxfifo_numchars(%struct.uart_softc*) #1

declare dso_local i32 @uart_toggle_intr(%struct.uart_softc*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
