; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i64, %struct.ifnet* }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.ifnet = type { i32 }

@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_RX_DISABLE = common dso_local global i32 0, align 4
@XL_CMD_STATS_DISABLE = common dso_local global i32 0, align 4
@XL_CMD_INTR_ENB = common dso_local global i32 0, align 4
@XL_CMD_RX_DISCARD = common dso_local global i32 0, align 4
@XL_CMD_TX_DISABLE = common dso_local global i32 0, align 4
@XL_CMD_COAX_STOP = common dso_local global i32 0, align 4
@XL_CMD_INTR_ACK = common dso_local global i32 0, align 4
@XL_STAT_INTLATCH = common dso_local global i32 0, align 4
@XL_CMD_STAT_ENB = common dso_local global i32 0, align 4
@XL_FLAG_FUNCREG = common dso_local global i32 0, align 4
@XL_RX_LIST_CNT = common dso_local global i32 0, align 4
@XL_RX_LIST_SZ = common dso_local global i32 0, align 4
@XL_TX_LIST_CNT = common dso_local global i32 0, align 4
@XL_TX_LIST_SZ = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@XL_CMD_RX_RESET = common dso_local global i32 0, align 4
@XL_CMD_TX_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_stop(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %5 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %5, i32 0, i32 8
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %4, align 8
  %8 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %9 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %8)
  %10 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %10, i32 0, i32 7
  store i64 0, i64* %11, align 8
  %12 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %13 = load i32, i32* @XL_COMMAND, align 4
  %14 = load i32, i32* @XL_CMD_RX_DISABLE, align 4
  %15 = call i32 @CSR_WRITE_2(%struct.xl_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %17 = load i32, i32* @XL_COMMAND, align 4
  %18 = load i32, i32* @XL_CMD_STATS_DISABLE, align 4
  %19 = call i32 @CSR_WRITE_2(%struct.xl_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %21 = load i32, i32* @XL_COMMAND, align 4
  %22 = load i32, i32* @XL_CMD_INTR_ENB, align 4
  %23 = call i32 @CSR_WRITE_2(%struct.xl_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %25 = load i32, i32* @XL_COMMAND, align 4
  %26 = load i32, i32* @XL_CMD_RX_DISCARD, align 4
  %27 = call i32 @CSR_WRITE_2(%struct.xl_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %29 = call i32 @xl_wait(%struct.xl_softc* %28)
  %30 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %31 = load i32, i32* @XL_COMMAND, align 4
  %32 = load i32, i32* @XL_CMD_TX_DISABLE, align 4
  %33 = call i32 @CSR_WRITE_2(%struct.xl_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %35 = load i32, i32* @XL_COMMAND, align 4
  %36 = load i32, i32* @XL_CMD_COAX_STOP, align 4
  %37 = call i32 @CSR_WRITE_2(%struct.xl_softc* %34, i32 %35, i32 %36)
  %38 = call i32 @DELAY(i32 800)
  %39 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %40 = load i32, i32* @XL_COMMAND, align 4
  %41 = load i32, i32* @XL_CMD_INTR_ACK, align 4
  %42 = load i32, i32* @XL_STAT_INTLATCH, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @CSR_WRITE_2(%struct.xl_softc* %39, i32 %40, i32 %43)
  %45 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %46 = load i32, i32* @XL_COMMAND, align 4
  %47 = load i32, i32* @XL_CMD_STAT_ENB, align 4
  %48 = call i32 @CSR_WRITE_2(%struct.xl_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %50 = load i32, i32* @XL_COMMAND, align 4
  %51 = load i32, i32* @XL_CMD_INTR_ENB, align 4
  %52 = call i32 @CSR_WRITE_2(%struct.xl_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %54 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @XL_FLAG_FUNCREG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %1
  %60 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %61 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %64 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bus_space_write_4(i32 %62, i32 %65, i32 4, i32 32768)
  br label %67

67:                                               ; preds = %59, %1
  %68 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %69 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %68, i32 0, i32 4
  %70 = call i32 @callout_stop(i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %132, %67
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @XL_RX_LIST_CNT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %135

75:                                               ; preds = %71
  %76 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %77 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %131

86:                                               ; preds = %75
  %87 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %88 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %91 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @bus_dmamap_unload(i32 %89, i32 %98)
  %100 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %101 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %104 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bus_dmamap_destroy(i32 %102, i32 %111)
  %113 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %114 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @m_freem(i32* %121)
  %123 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %124 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  br label %131

131:                                              ; preds = %86, %75
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %71

135:                                              ; preds = %71
  %136 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %137 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %143 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @XL_RX_LIST_SZ, align 4
  %147 = call i32 @bzero(i32* %145, i32 %146)
  br label %148

148:                                              ; preds = %141, %135
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %210, %148
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @XL_TX_LIST_CNT, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %213

153:                                              ; preds = %149
  %154 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %155 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %209

164:                                              ; preds = %153
  %165 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %166 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %169 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @bus_dmamap_unload(i32 %167, i32 %176)
  %178 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %179 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %182 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @bus_dmamap_destroy(i32 %180, i32 %189)
  %191 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %192 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32, i32* %3, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @m_freem(i32* %199)
  %201 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %202 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i32* null, i32** %208, align 8
  br label %209

209:                                              ; preds = %164, %153
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %3, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %3, align 4
  br label %149

213:                                              ; preds = %149
  %214 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %215 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %213
  %220 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %221 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* @XL_TX_LIST_SZ, align 4
  %225 = call i32 @bzero(i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %219, %213
  %227 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %228 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %229 = or i32 %227, %228
  %230 = xor i32 %229, -1
  %231 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %232 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 4
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @xl_wait(%struct.xl_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
