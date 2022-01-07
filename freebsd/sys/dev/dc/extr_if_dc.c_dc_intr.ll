; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { %struct.TYPE_2__, %struct.ifnet*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32, i32, i32 }

@DC_ISR = common dso_local global i32 0, align 4
@DC_INTRS = common dso_local global i32 0, align 4
@DC_IMR = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@DC_ISR_RX_OK = common dso_local global i32 0, align 4
@DC_ISR_TX_OK = common dso_local global i32 0, align 4
@DC_ISR_TX_NOBUF = common dso_local global i32 0, align 4
@DC_ISR_TX_IDLE = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_TX_ON = common dso_local global i32 0, align 4
@DC_TXSTART = common dso_local global i32 0, align 4
@DC_ISR_TX_UNDERRUN = common dso_local global i32 0, align 4
@DC_ISR_RX_WATDOGTIMEO = common dso_local global i32 0, align 4
@DC_ISR_RX_NOBUF = common dso_local global i32 0, align 4
@DC_FRAMESDISCARDED = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@DC_ISR_BUS_ERR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.dc_softc*
  store %struct.dc_softc* %9, %struct.dc_softc** %3, align 8
  %10 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %203

15:                                               ; preds = %1
  %16 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %17 = call i32 @DC_LOCK(%struct.dc_softc* %16)
  %18 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %19 = load i32, i32* @DC_ISR, align 4
  %20 = call i32 @CSR_READ_4(%struct.dc_softc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DC_INTRS, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %15
  %29 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %30 = call i32 @DC_UNLOCK(%struct.dc_softc* %29)
  br label %203

31:                                               ; preds = %23
  %32 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %32, i32 0, i32 1
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  store %struct.ifnet* %34, %struct.ifnet** %4, align 8
  %35 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %36 = load i32, i32* @DC_IMR, align 4
  %37 = call i32 @CSR_WRITE_4(%struct.dc_softc* %35, i32 %36, i32 0)
  store i32 16, i32* %7, align 4
  br label %38

38:                                               ; preds = %185, %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %188

41:                                               ; preds = %38
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %188

49:                                               ; preds = %41
  %50 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %51 = load i32, i32* @DC_ISR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @CSR_WRITE_4(%struct.dc_softc* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @DC_ISR_RX_OK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %60 = call i64 @dc_rxeof(%struct.dc_softc* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %67, %62
  %64 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %65 = call i64 @dc_rx_resync(%struct.dc_softc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %69 = call i64 @dc_rxeof(%struct.dc_softc* %68)
  br label %63

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %49
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DC_ISR_TX_OK, align 4
  %75 = load i32, i32* @DC_ISR_TX_NOBUF, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %81 = call i32 @dc_txeof(%struct.dc_softc* %80)
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @DC_ISR_TX_IDLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %89 = call i32 @dc_txeof(%struct.dc_softc* %88)
  %90 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %91 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %97 = load i32, i32* @DC_NETCFG, align 4
  %98 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %99 = call i32 @DC_SETBIT(%struct.dc_softc* %96, i32 %97, i32 %98)
  %100 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %101 = load i32, i32* @DC_TXSTART, align 4
  %102 = call i32 @CSR_WRITE_4(%struct.dc_softc* %100, i32 %101, i32 -1)
  br label %103

103:                                              ; preds = %95, %87
  br label %104

104:                                              ; preds = %103, %82
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @DC_ISR_TX_UNDERRUN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %111 = call i32 @dc_tx_underrun(%struct.dc_softc* %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @DC_ISR_RX_WATDOGTIMEO, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @DC_ISR_RX_NOBUF, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %117, %112
  %123 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %124 = load i32, i32* @DC_FRAMESDISCARDED, align 4
  %125 = call i32 @CSR_READ_4(%struct.dc_softc* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, 65535
  %130 = load i32, i32* %5, align 4
  %131 = ashr i32 %130, 17
  %132 = and i32 %131, 2047
  %133 = add nsw i32 %129, %132
  %134 = call i32 @if_inc_counter(%struct.ifnet* %126, i32 %127, i32 %133)
  %135 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %136 = call i64 @dc_rxeof(%struct.dc_softc* %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %143, %138
  %140 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %141 = call i64 @dc_rx_resync(%struct.dc_softc* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %145 = call i64 @dc_rxeof(%struct.dc_softc* %144)
  br label %139

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %122
  br label %148

148:                                              ; preds = %147, %117
  %149 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 2
  %151 = call i32 @IFQ_DRV_IS_EMPTY(i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %155 = call i32 @dc_start_locked(%struct.ifnet* %154)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @DC_ISR_BUS_ERR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %169 = call i32 @dc_init_locked(%struct.dc_softc* %168)
  %170 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %171 = call i32 @DC_UNLOCK(%struct.dc_softc* %170)
  br label %203

172:                                              ; preds = %156
  %173 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %174 = load i32, i32* @DC_ISR, align 4
  %175 = call i32 @CSR_READ_4(%struct.dc_softc* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %183, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @DC_INTRS, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178, %172
  br label %188

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %7, align 4
  br label %38

188:                                              ; preds = %183, %48, %38
  %189 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %190 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %197 = load i32, i32* @DC_IMR, align 4
  %198 = load i32, i32* @DC_INTRS, align 4
  %199 = call i32 @CSR_WRITE_4(%struct.dc_softc* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %188
  %201 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %202 = call i32 @DC_UNLOCK(%struct.dc_softc* %201)
  br label %203

203:                                              ; preds = %200, %161, %28, %14
  ret void
}

declare dso_local i32 @DC_LOCK(%struct.dc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @DC_UNLOCK(%struct.dc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i64 @dc_rxeof(%struct.dc_softc*) #1

declare dso_local i64 @dc_rx_resync(%struct.dc_softc*) #1

declare dso_local i32 @dc_txeof(%struct.dc_softc*) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_tx_underrun(%struct.dc_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @dc_start_locked(%struct.ifnet*) #1

declare dso_local i32 @dc_init_locked(%struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
