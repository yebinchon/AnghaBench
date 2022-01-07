; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty* }
%struct.tty = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SER_INT_MASK = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@UART_STAT_FRAMERR = common dso_local global i32 0, align 4
@TRE_FRAMING = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@TRE_OVERRUN = common dso_local global i32 0, align 4
@UART_STAT_PARERR = common dso_local global i32 0, align 4
@TRE_PARITY = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@TRE_BREAK = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@SER_INT_SIGMASK = common dso_local global i32 0, align 4
@SER_DDCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@SER_DCTS = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_tty_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.uart_softc*
  store %struct.uart_softc* %11, %struct.uart_softc** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %163

17:                                               ; preds = %1
  %18 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %18, i32 0, i32 3
  %20 = call i32 @atomic_readandclear_32(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SER_INT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %163

26:                                               ; preds = %17
  %27 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.tty*, %struct.tty** %30, align 8
  store %struct.tty* %31, %struct.tty** %4, align 8
  %32 = load %struct.tty*, %struct.tty** %4, align 8
  %33 = call i32 @tty_lock(%struct.tty* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SER_INT_RXREADY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %113

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %111, %38
  %40 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %41 = call i32 @uart_rx_empty(%struct.uart_softc* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i1 [ false, %39 ], [ %48, %43 ]
  br i1 %50, label %51, label %112

51:                                               ; preds = %49
  %52 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %53 = call i32 @uart_rx_peek(%struct.uart_softc* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 255
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @UART_STAT_FRAMERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @TRE_FRAMING, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @TRE_OVERRUN, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @UART_STAT_PARERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @TRE_PARITY, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.tty*, %struct.tty** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @ttydisc_rint(%struct.tty* %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %90 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.tty*, %struct.tty** %4, align 8
  %92 = getelementptr inbounds %struct.tty, %struct.tty* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CRTS_IFLOW, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %100 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %105 = load i32, i32* @SER_DRTS, align 4
  %106 = call i32 @UART_SETSIG(%struct.uart_softc* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %98, %88
  br label %111

108:                                              ; preds = %82
  %109 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %110 = call i32 @uart_rx_next(%struct.uart_softc* %109)
  br label %111

111:                                              ; preds = %108, %107
  br label %39

112:                                              ; preds = %49
  br label %113

113:                                              ; preds = %112, %26
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @SER_INT_BREAK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.tty*, %struct.tty** %4, align 8
  %120 = load i32, i32* @TRE_BREAK, align 4
  %121 = call i64 @ttydisc_rint(%struct.tty* %119, i32 0, i32 %120)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @SER_INT_SIGCHG, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @SER_INT_SIGMASK, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @SER_DDCD, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load %struct.tty*, %struct.tty** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @SER_DCD, align 4
  %139 = and i32 %137, %138
  %140 = call i32 @ttydisc_modem(%struct.tty* %136, i32 %139)
  br label %141

141:                                              ; preds = %135, %127
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @SER_DCTS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.tty*, %struct.tty** %4, align 8
  %148 = call i32 @uart_tty_outwakeup(%struct.tty* %147)
  br label %149

149:                                              ; preds = %146, %141
  br label %150

150:                                              ; preds = %149, %122
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @SER_INT_TXIDLE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.tty*, %struct.tty** %4, align 8
  %157 = call i32 @uart_tty_outwakeup(%struct.tty* %156)
  br label %158

158:                                              ; preds = %155, %150
  %159 = load %struct.tty*, %struct.tty** %4, align 8
  %160 = call i32 @ttydisc_rint_done(%struct.tty* %159)
  %161 = load %struct.tty*, %struct.tty** %4, align 8
  %162 = call i32 @tty_unlock(%struct.tty* %161)
  br label %163

163:                                              ; preds = %158, %25, %16
  ret void
}

declare dso_local i32 @atomic_readandclear_32(i32*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @uart_rx_empty(%struct.uart_softc*) #1

declare dso_local i32 @uart_rx_peek(%struct.uart_softc*) #1

declare dso_local i64 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @UART_SETSIG(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_rx_next(%struct.uart_softc*) #1

declare dso_local i32 @ttydisc_modem(%struct.tty*, i32) #1

declare dso_local i32 @uart_tty_outwakeup(%struct.tty*) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
