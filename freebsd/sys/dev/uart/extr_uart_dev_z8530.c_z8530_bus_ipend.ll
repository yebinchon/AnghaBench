; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.z8530_softc = type { i64 }

@RR_IP = common dso_local global i32 0, align 4
@RR_IV = common dso_local global i32 0, align 4
@IP_TIA = common dso_local global i32 0, align 4
@IP_SIA = common dso_local global i32 0, align 4
@IP_RIA = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@CR_RSTTXI = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@CR_RSTXSI = common dso_local global i32 0, align 4
@RR_BES = common dso_local global i32 0, align 4
@BES_BRK = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@BES_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@SER_DCTS = common dso_local global i32 0, align 4
@BES_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@SER_DDCD = common dso_local global i32 0, align 4
@BES_SYNC = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@SER_DDSR = common dso_local global i32 0, align 4
@SER_MASK_DELTA = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@RR_SRC = common dso_local global i32 0, align 4
@SRC_OVR = common dso_local global i32 0, align 4
@CR_RSTERR = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@CR_RSTIUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @z8530_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.z8530_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = bitcast %struct.uart_softc* %11 to %struct.z8530_softc*
  store %struct.z8530_softc* %12, %struct.z8530_softc** %3, align 8
  %13 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 2
  store %struct.uart_bas* %14, %struct.uart_bas** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @uart_lock(i32 %17)
  %19 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %20 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %40 [
    i32 1, label %22
    i32 2, label %26
  ]

22:                                               ; preds = %1
  %23 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %24 = load i32, i32* @RR_IP, align 4
  %25 = call i32 @uart_getmreg(%struct.uart_bas* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %28 = load i32, i32* @RR_IV, align 4
  %29 = call i32 @uart_getmreg(%struct.uart_bas* %27, i32 %28)
  %30 = and i32 %29, 14
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %38 [
    i32 129, label %32
    i32 128, label %34
    i32 130, label %36
  ]

32:                                               ; preds = %26
  %33 = load i32, i32* @IP_TIA, align 4
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @IP_SIA, align 4
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @IP_RIA, align 4
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %36, %34, %32
  br label %41

40:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %39, %22
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IP_RIA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @SER_INT_RXREADY, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @IP_TIA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %57 = load i32, i32* @REG_CTRL, align 4
  %58 = load i32, i32* @CR_RSTTXI, align 4
  %59 = call i32 @uart_setreg(%struct.uart_bas* %56, i32 %57, i32 %58)
  %60 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %61 = call i32 @uart_barrier(%struct.uart_bas* %60)
  %62 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %63 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = load i32, i32* @SER_INT_TXIDLE, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.z8530_softc*, %struct.z8530_softc** %3, align 8
  %71 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %55
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @IP_SIA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %148

78:                                               ; preds = %73
  %79 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %80 = load i32, i32* @REG_CTRL, align 4
  %81 = load i32, i32* @CR_RSTXSI, align 4
  %82 = call i32 @uart_setreg(%struct.uart_bas* %79, i32 %80, i32 %81)
  %83 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %84 = call i32 @uart_barrier(%struct.uart_bas* %83)
  %85 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %86 = load i32, i32* @RR_BES, align 4
  %87 = call i32 @uart_getmreg(%struct.uart_bas* %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @BES_BRK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load i32, i32* @SER_INT_BREAK, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %78
  %97 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %98 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @BES_CTS, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SER_CTS, align 4
  %105 = load i32, i32* @SER_DCTS, align 4
  %106 = call i32 @SIGCHG(i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @BES_DCD, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @SER_DCD, align 4
  %112 = load i32, i32* @SER_DDCD, align 4
  %113 = call i32 @SIGCHG(i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @BES_SYNC, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @SER_DSR, align 4
  %119 = load i32, i32* @SER_DDSR, align 4
  %120 = call i32 @SIGCHG(i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @SER_MASK_DELTA, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %96
  %126 = load i32, i32* @SER_INT_SIGCHG, align 4
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %96
  %130 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %131 = load i32, i32* @RR_SRC, align 4
  %132 = call i32 @uart_getmreg(%struct.uart_bas* %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @SRC_OVR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %129
  %138 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %139 = load i32, i32* @REG_CTRL, align 4
  %140 = load i32, i32* @CR_RSTERR, align 4
  %141 = call i32 @uart_setreg(%struct.uart_bas* %138, i32 %139, i32 %140)
  %142 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %143 = call i32 @uart_barrier(%struct.uart_bas* %142)
  %144 = load i32, i32* @SER_INT_OVERRUN, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %137, %129
  br label %148

148:                                              ; preds = %147, %73
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %153 = load i32, i32* @REG_CTRL, align 4
  %154 = load i32, i32* @CR_RSTIUS, align 4
  %155 = call i32 @uart_setreg(%struct.uart_bas* %152, i32 %153, i32 %154)
  %156 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %157 = call i32 @uart_barrier(%struct.uart_bas* %156)
  br label %158

158:                                              ; preds = %151, %148
  %159 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %160 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @uart_unlock(i32 %161)
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getmreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
