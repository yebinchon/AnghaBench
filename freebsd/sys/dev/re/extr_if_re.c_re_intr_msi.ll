; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_intr_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_intr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i64, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@RL_IMR = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RL_INTRS_CPLUS = common dso_local global i32 0, align 4
@RL_ISR = common dso_local global i32 0, align 4
@RL_ISR_RX_OK = common dso_local global i32 0, align 4
@RL_ISR_RX_ERR = common dso_local global i32 0, align 4
@RL_ISR_FIFO_OFLOW = common dso_local global i32 0, align 4
@RL_ISR_RX_OVERRUN = common dso_local global i32 0, align 4
@RL_ISR_TIMEOUT_EXPIRED = common dso_local global i32 0, align 4
@RL_TIMERCNT = common dso_local global i32 0, align 4
@RL_ISR_TX_OK = common dso_local global i32 0, align 4
@RL_ISR_TX_DESC_UNAVAIL = common dso_local global i32 0, align 4
@RL_FLAG_PCIE = common dso_local global i32 0, align 4
@RL_TXSTART_START = common dso_local global i32 0, align 4
@RL_ISR_TX_ERR = common dso_local global i32 0, align 4
@RL_ISR_SYSTEM_ERR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @re_intr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_intr_msi(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rl_softc*
  store %struct.rl_softc* %8, %struct.rl_softc** %3, align 8
  %9 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %10 = call i32 @RL_LOCK(%struct.rl_softc* %9)
  %11 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %12 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %11, i32 0, i32 4
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %15 = load i32, i32* @RL_IMR, align 4
  %16 = call i32 @CSR_WRITE_2(%struct.rl_softc* %14, i32 %15, i32 0)
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %25 = call i32 @RL_UNLOCK(%struct.rl_softc* %24)
  br label %198

26:                                               ; preds = %1
  %27 = load i32, i32* @RL_INTRS_CPLUS, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %29 = load i32, i32* @RL_ISR, align 4
  %30 = call i32 @CSR_READ_2(%struct.rl_softc* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %32 = load i32, i32* @RL_ISR, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CSR_WRITE_2(%struct.rl_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %26
  %40 = load i32, i32* @RL_ISR_RX_OK, align 4
  %41 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RL_ISR_FIFO_OFLOW, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RL_ISR_RX_OVERRUN, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @RL_ISR_RX_OK, align 4
  %51 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RL_ISR_FIFO_OFLOW, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RL_ISR_RX_OVERRUN, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %39, %26
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @RL_ISR_TIMEOUT_EXPIRED, align 4
  %63 = load i32, i32* @RL_ISR_RX_OK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RL_ISR_FIFO_OFLOW, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RL_ISR_RX_OVERRUN, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %61, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %128

73:                                               ; preds = %60
  %74 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %75 = call i32 @re_rxeof(%struct.rl_softc* %74, i32* null)
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %73
  %83 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %84 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @RL_ISR_RX_OK, align 4
  %90 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @RL_ISR_FIFO_OFLOW, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RL_ISR_RX_OVERRUN, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %88, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %87
  %99 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %100 = load i32, i32* @RL_TIMERCNT, align 4
  %101 = call i32 @CSR_WRITE_4(%struct.rl_softc* %99, i32 %100, i32 1)
  %102 = load i32, i32* @RL_ISR_RX_OK, align 4
  %103 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @RL_ISR_FIFO_OFLOW, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @RL_ISR_RX_OVERRUN, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %113 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %126

114:                                              ; preds = %87, %82
  %115 = load i32, i32* @RL_ISR_RX_OK, align 4
  %116 = load i32, i32* @RL_ISR_RX_ERR, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @RL_ISR_FIFO_OFLOW, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @RL_ISR_RX_OVERRUN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %125 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %114, %98
  br label %127

127:                                              ; preds = %126, %73
  br label %128

128:                                              ; preds = %127, %60
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @RL_ISR_TX_OK, align 4
  %131 = load i32, i32* @RL_ISR_TX_DESC_UNAVAIL, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %128
  %136 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %137 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RL_FLAG_PCIE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %144 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %145 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RL_TXSTART_START, align 4
  %148 = call i32 @CSR_WRITE_1(%struct.rl_softc* %143, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %142, %135, %128
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @RL_ISR_TX_OK, align 4
  %152 = load i32, i32* @RL_ISR_TX_ERR, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @RL_ISR_TX_DESC_UNAVAIL, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %150, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %160 = call i32 @re_txeof(%struct.rl_softc* %159)
  br label %161

161:                                              ; preds = %158, %149
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @RL_ISR_SYSTEM_ERR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %174 = call i32 @re_init_locked(%struct.rl_softc* %173)
  br label %175

175:                                              ; preds = %166, %161
  %176 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %184 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %183, i32 0, i32 2
  %185 = call i32 @IFQ_DRV_IS_EMPTY(i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %182
  %188 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %189 = call i32 @re_start_locked(%struct.ifnet* %188)
  br label %190

190:                                              ; preds = %187, %182
  %191 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %192 = load i32, i32* @RL_IMR, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @CSR_WRITE_2(%struct.rl_softc* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %175
  %196 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %197 = call i32 @RL_UNLOCK(%struct.rl_softc* %196)
  br label %198

198:                                              ; preds = %195, %23
  ret void
}

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.rl_softc*, i32) #1

declare dso_local i32 @re_rxeof(%struct.rl_softc*, i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @re_txeof(%struct.rl_softc*) #1

declare dso_local i32 @re_init_locked(%struct.rl_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @re_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
