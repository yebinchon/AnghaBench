; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@STE_ISR_ACK = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@STE_INTRS = common dso_local global i32 0, align 4
@STE_ISR_RX_DMADONE = common dso_local global i32 0, align 4
@STE_IMR_RX_DMADONE = common dso_local global i32 0, align 4
@STE_ISR_SOFTINTR = common dso_local global i32 0, align 4
@STE_COUNTDOWN = common dso_local global i32 0, align 4
@STE_ISR_TX_DMADONE = common dso_local global i32 0, align 4
@STE_ISR_TX_DONE = common dso_local global i32 0, align 4
@STE_ISR_STATS_OFLOW = common dso_local global i32 0, align 4
@STE_ISR_HOSTERR = common dso_local global i32 0, align 4
@STE_IMR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ste_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ste_softc*
  store %struct.ste_softc* %8, %struct.ste_softc** %3, align 8
  %9 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %10 = call i32 @STE_LOCK(%struct.ste_softc* %9)
  %11 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %11, i32 0, i32 2
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %15 = load i32, i32* @STE_ISR_ACK, align 4
  %16 = call i32 @CSR_READ_2(%struct.ste_softc* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %25 = call i32 @STE_UNLOCK(%struct.ste_softc* %24)
  br label %162

26:                                               ; preds = %1
  %27 = load i32, i32* @STE_INTRS, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %26
  br label %154

36:                                               ; preds = %30
  %37 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* @STE_ISR_RX_DMADONE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @STE_IMR_RX_DMADONE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %36
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @STE_ISR_SOFTINTR, align 4
  %53 = load i32, i32* @STE_ISR_RX_DMADONE, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %50
  %58 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %59 = call i32 @ste_rxeof(%struct.ste_softc* %58, i32 -1)
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %57
  %67 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @STE_ISR_RX_DMADONE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %78 = load i32, i32* @STE_COUNTDOWN, align 4
  %79 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @STE_TIMER_USECS(i64 %81)
  %83 = call i32 @CSR_WRITE_2(%struct.ste_softc* %77, i32 %78, i32 %82)
  %84 = load i32, i32* @STE_IMR_RX_DMADONE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %96

90:                                               ; preds = %71
  %91 = load i32, i32* @STE_IMR_RX_DMADONE, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %95 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %76
  br label %97

97:                                               ; preds = %96, %66, %57
  br label %98

98:                                               ; preds = %97, %50
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %159

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @STE_ISR_TX_DMADONE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %112 = call i32 @ste_txeof(%struct.ste_softc* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @STE_ISR_TX_DONE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %120 = call i32 @ste_txeoc(%struct.ste_softc* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @STE_ISR_STATS_OFLOW, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %128 = call i32 @ste_stats_update(%struct.ste_softc* %127)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @STE_ISR_HOSTERR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %138 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %142 = call i32 @ste_init_locked(%struct.ste_softc* %141)
  %143 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %144 = call i32 @STE_UNLOCK(%struct.ste_softc* %143)
  br label %162

145:                                              ; preds = %129
  %146 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 2
  %148 = call i32 @IFQ_DRV_IS_EMPTY(i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %152 = call i32 @ste_start_locked(%struct.ifnet* %151)
  br label %153

153:                                              ; preds = %150, %145
  br label %154

154:                                              ; preds = %153, %35
  %155 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %156 = load i32, i32* @STE_IMR, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @CSR_WRITE_2(%struct.ste_softc* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %154, %98
  %160 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %161 = call i32 @STE_UNLOCK(%struct.ste_softc* %160)
  br label %162

162:                                              ; preds = %159, %134, %23
  ret void
}

declare dso_local i32 @STE_LOCK(%struct.ste_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.ste_softc*, i32) #1

declare dso_local i32 @STE_UNLOCK(%struct.ste_softc*) #1

declare dso_local i32 @ste_rxeof(%struct.ste_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @STE_TIMER_USECS(i64) #1

declare dso_local i32 @ste_txeof(%struct.ste_softc*) #1

declare dso_local i32 @ste_txeoc(%struct.ste_softc*) #1

declare dso_local i32 @ste_stats_update(%struct.ste_softc*) #1

declare dso_local i32 @ste_init_locked(%struct.ste_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @ste_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
