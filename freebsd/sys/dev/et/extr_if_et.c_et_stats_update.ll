; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.et_hw_stats }
%struct.et_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ET_STAT_PKTS_64 = common dso_local global i32 0, align 4
@ET_STAT_PKTS_65_127 = common dso_local global i32 0, align 4
@ET_STAT_PKTS_128_255 = common dso_local global i32 0, align 4
@ET_STAT_PKTS_256_511 = common dso_local global i32 0, align 4
@ET_STAT_PKTS_512_1023 = common dso_local global i32 0, align 4
@ET_STAT_PKTS_1024_1518 = common dso_local global i32 0, align 4
@ET_STAT_PKTS_1519_1522 = common dso_local global i32 0, align 4
@ET_STAT_RX_BYTES = common dso_local global i32 0, align 4
@ET_STAT_RX_FRAMES = common dso_local global i32 0, align 4
@ET_STAT_RX_CRC_ERR = common dso_local global i32 0, align 4
@ET_STAT_RX_MCAST = common dso_local global i32 0, align 4
@ET_STAT_RX_BCAST = common dso_local global i32 0, align 4
@ET_STAT_RX_CTL = common dso_local global i32 0, align 4
@ET_STAT_RX_PAUSE = common dso_local global i32 0, align 4
@ET_STAT_RX_UNKNOWN_CTL = common dso_local global i32 0, align 4
@ET_STAT_RX_ALIGN_ERR = common dso_local global i32 0, align 4
@ET_STAT_RX_LEN_ERR = common dso_local global i32 0, align 4
@ET_STAT_RX_CODE_ERR = common dso_local global i32 0, align 4
@ET_STAT_RX_CS_ERR = common dso_local global i32 0, align 4
@ET_STAT_RX_RUNT = common dso_local global i32 0, align 4
@ET_STAT_RX_OVERSIZE = common dso_local global i32 0, align 4
@ET_STAT_RX_FRAG = common dso_local global i32 0, align 4
@ET_STAT_RX_JABBER = common dso_local global i32 0, align 4
@ET_STAT_RX_DROP = common dso_local global i32 0, align 4
@ET_STAT_TX_BYTES = common dso_local global i32 0, align 4
@ET_STAT_TX_FRAMES = common dso_local global i32 0, align 4
@ET_STAT_TX_MCAST = common dso_local global i32 0, align 4
@ET_STAT_TX_BCAST = common dso_local global i32 0, align 4
@ET_STAT_TX_PAUSE = common dso_local global i32 0, align 4
@ET_STAT_TX_DEFER = common dso_local global i32 0, align 4
@ET_STAT_TX_EXCESS_DEFER = common dso_local global i32 0, align 4
@ET_STAT_TX_SINGLE_COL = common dso_local global i32 0, align 4
@ET_STAT_TX_MULTI_COL = common dso_local global i32 0, align 4
@ET_STAT_TX_LATE_COL = common dso_local global i32 0, align 4
@ET_STAT_TX_EXCESS_COL = common dso_local global i32 0, align 4
@ET_STAT_TX_TOTAL_COL = common dso_local global i32 0, align 4
@ET_STAT_TX_PAUSE_HONOR = common dso_local global i32 0, align 4
@ET_STAT_TX_DROP = common dso_local global i32 0, align 4
@ET_STAT_TX_JABBER = common dso_local global i32 0, align 4
@ET_STAT_TX_CRC_ERR = common dso_local global i32 0, align 4
@ET_STAT_TX_CTL = common dso_local global i32 0, align 4
@ET_STAT_TX_OVERSIZE = common dso_local global i32 0, align 4
@ET_STAT_TX_UNDERSIZE = common dso_local global i32 0, align 4
@ET_STAT_TX_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_stats_update(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.et_hw_stats*, align 8
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %4 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %5 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %4, i32 0, i32 0
  store %struct.et_hw_stats* %5, %struct.et_hw_stats** %3, align 8
  %6 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %7 = load i32, i32* @ET_STAT_PKTS_64, align 4
  %8 = call i64 @CSR_READ_4(%struct.et_softc* %6, i32 %7)
  %9 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %10 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %9, i32 0, i32 43
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %16 = load i32, i32* @ET_STAT_PKTS_65_127, align 4
  %17 = call i64 @CSR_READ_4(%struct.et_softc* %15, i32 %16)
  %18 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %19 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %18, i32 0, i32 42
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %25 = load i32, i32* @ET_STAT_PKTS_128_255, align 4
  %26 = call i64 @CSR_READ_4(%struct.et_softc* %24, i32 %25)
  %27 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %28 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %27, i32 0, i32 41
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %34 = load i32, i32* @ET_STAT_PKTS_256_511, align 4
  %35 = call i64 @CSR_READ_4(%struct.et_softc* %33, i32 %34)
  %36 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %37 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %36, i32 0, i32 40
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %43 = load i32, i32* @ET_STAT_PKTS_512_1023, align 4
  %44 = call i64 @CSR_READ_4(%struct.et_softc* %42, i32 %43)
  %45 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %46 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %45, i32 0, i32 39
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %52 = load i32, i32* @ET_STAT_PKTS_1024_1518, align 4
  %53 = call i64 @CSR_READ_4(%struct.et_softc* %51, i32 %52)
  %54 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %55 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %54, i32 0, i32 38
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %61 = load i32, i32* @ET_STAT_PKTS_1519_1522, align 4
  %62 = call i64 @CSR_READ_4(%struct.et_softc* %60, i32 %61)
  %63 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %64 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %63, i32 0, i32 37
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %70 = load i32, i32* @ET_STAT_RX_BYTES, align 4
  %71 = call i64 @CSR_READ_4(%struct.et_softc* %69, i32 %70)
  %72 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %73 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %72, i32 0, i32 36
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %79 = load i32, i32* @ET_STAT_RX_FRAMES, align 4
  %80 = call i64 @CSR_READ_4(%struct.et_softc* %78, i32 %79)
  %81 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %82 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %81, i32 0, i32 35
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %88 = load i32, i32* @ET_STAT_RX_CRC_ERR, align 4
  %89 = call i64 @CSR_READ_4(%struct.et_softc* %87, i32 %88)
  %90 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %91 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %90, i32 0, i32 34
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %97 = load i32, i32* @ET_STAT_RX_MCAST, align 4
  %98 = call i64 @CSR_READ_4(%struct.et_softc* %96, i32 %97)
  %99 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %100 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %99, i32 0, i32 33
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %106 = load i32, i32* @ET_STAT_RX_BCAST, align 4
  %107 = call i64 @CSR_READ_4(%struct.et_softc* %105, i32 %106)
  %108 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %109 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %108, i32 0, i32 32
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %115 = load i32, i32* @ET_STAT_RX_CTL, align 4
  %116 = call i64 @CSR_READ_4(%struct.et_softc* %114, i32 %115)
  %117 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %118 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %117, i32 0, i32 31
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %124 = load i32, i32* @ET_STAT_RX_PAUSE, align 4
  %125 = call i64 @CSR_READ_4(%struct.et_softc* %123, i32 %124)
  %126 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %127 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %126, i32 0, i32 30
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %133 = load i32, i32* @ET_STAT_RX_UNKNOWN_CTL, align 4
  %134 = call i64 @CSR_READ_4(%struct.et_softc* %132, i32 %133)
  %135 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %136 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %135, i32 0, i32 29
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  %141 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %142 = load i32, i32* @ET_STAT_RX_ALIGN_ERR, align 4
  %143 = call i64 @CSR_READ_4(%struct.et_softc* %141, i32 %142)
  %144 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %145 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %144, i32 0, i32 28
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %151 = load i32, i32* @ET_STAT_RX_LEN_ERR, align 4
  %152 = call i64 @CSR_READ_4(%struct.et_softc* %150, i32 %151)
  %153 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %154 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %153, i32 0, i32 27
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %160 = load i32, i32* @ET_STAT_RX_CODE_ERR, align 4
  %161 = call i64 @CSR_READ_4(%struct.et_softc* %159, i32 %160)
  %162 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %163 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %162, i32 0, i32 26
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  %168 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %169 = load i32, i32* @ET_STAT_RX_CS_ERR, align 4
  %170 = call i64 @CSR_READ_4(%struct.et_softc* %168, i32 %169)
  %171 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %172 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %171, i32 0, i32 25
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 4
  %177 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %178 = load i32, i32* @ET_STAT_RX_RUNT, align 4
  %179 = call i64 @CSR_READ_4(%struct.et_softc* %177, i32 %178)
  %180 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %181 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %180, i32 0, i32 24
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %179
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %181, align 4
  %186 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %187 = load i32, i32* @ET_STAT_RX_OVERSIZE, align 4
  %188 = call i64 @CSR_READ_4(%struct.et_softc* %186, i32 %187)
  %189 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %190 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %189, i32 0, i32 23
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  %195 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %196 = load i32, i32* @ET_STAT_RX_FRAG, align 4
  %197 = call i64 @CSR_READ_4(%struct.et_softc* %195, i32 %196)
  %198 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %199 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %198, i32 0, i32 22
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %197
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %199, align 4
  %204 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %205 = load i32, i32* @ET_STAT_RX_JABBER, align 4
  %206 = call i64 @CSR_READ_4(%struct.et_softc* %204, i32 %205)
  %207 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %208 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %207, i32 0, i32 21
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %206
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %208, align 4
  %213 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %214 = load i32, i32* @ET_STAT_RX_DROP, align 4
  %215 = call i64 @CSR_READ_4(%struct.et_softc* %213, i32 %214)
  %216 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %217 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %216, i32 0, i32 20
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %215
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 4
  %222 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %223 = load i32, i32* @ET_STAT_TX_BYTES, align 4
  %224 = call i64 @CSR_READ_4(%struct.et_softc* %222, i32 %223)
  %225 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %226 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %225, i32 0, i32 19
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %224
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %226, align 4
  %231 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %232 = load i32, i32* @ET_STAT_TX_FRAMES, align 4
  %233 = call i64 @CSR_READ_4(%struct.et_softc* %231, i32 %232)
  %234 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %235 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %234, i32 0, i32 18
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, %233
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %235, align 4
  %240 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %241 = load i32, i32* @ET_STAT_TX_MCAST, align 4
  %242 = call i64 @CSR_READ_4(%struct.et_softc* %240, i32 %241)
  %243 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %244 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %243, i32 0, i32 17
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %242
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 4
  %249 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %250 = load i32, i32* @ET_STAT_TX_BCAST, align 4
  %251 = call i64 @CSR_READ_4(%struct.et_softc* %249, i32 %250)
  %252 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %253 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %252, i32 0, i32 16
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 4
  %258 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %259 = load i32, i32* @ET_STAT_TX_PAUSE, align 4
  %260 = call i64 @CSR_READ_4(%struct.et_softc* %258, i32 %259)
  %261 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %262 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %261, i32 0, i32 15
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %268 = load i32, i32* @ET_STAT_TX_DEFER, align 4
  %269 = call i64 @CSR_READ_4(%struct.et_softc* %267, i32 %268)
  %270 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %271 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %270, i32 0, i32 14
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %269
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 4
  %276 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %277 = load i32, i32* @ET_STAT_TX_EXCESS_DEFER, align 4
  %278 = call i64 @CSR_READ_4(%struct.et_softc* %276, i32 %277)
  %279 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %280 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %279, i32 0, i32 13
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %282, %278
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %280, align 4
  %285 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %286 = load i32, i32* @ET_STAT_TX_SINGLE_COL, align 4
  %287 = call i64 @CSR_READ_4(%struct.et_softc* %285, i32 %286)
  %288 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %289 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %288, i32 0, i32 12
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %287
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %289, align 4
  %294 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %295 = load i32, i32* @ET_STAT_TX_MULTI_COL, align 4
  %296 = call i64 @CSR_READ_4(%struct.et_softc* %294, i32 %295)
  %297 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %298 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %300, %296
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %298, align 4
  %303 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %304 = load i32, i32* @ET_STAT_TX_LATE_COL, align 4
  %305 = call i64 @CSR_READ_4(%struct.et_softc* %303, i32 %304)
  %306 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %307 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %306, i32 0, i32 10
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %309, %305
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %307, align 4
  %312 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %313 = load i32, i32* @ET_STAT_TX_EXCESS_COL, align 4
  %314 = call i64 @CSR_READ_4(%struct.et_softc* %312, i32 %313)
  %315 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %316 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %315, i32 0, i32 9
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %318, %314
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %316, align 4
  %321 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %322 = load i32, i32* @ET_STAT_TX_TOTAL_COL, align 4
  %323 = call i64 @CSR_READ_4(%struct.et_softc* %321, i32 %322)
  %324 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %325 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %327, %323
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %325, align 4
  %330 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %331 = load i32, i32* @ET_STAT_TX_PAUSE_HONOR, align 4
  %332 = call i64 @CSR_READ_4(%struct.et_softc* %330, i32 %331)
  %333 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %334 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %336, %332
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %334, align 4
  %339 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %340 = load i32, i32* @ET_STAT_TX_DROP, align 4
  %341 = call i64 @CSR_READ_4(%struct.et_softc* %339, i32 %340)
  %342 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %343 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = add nsw i64 %345, %341
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %343, align 4
  %348 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %349 = load i32, i32* @ET_STAT_TX_JABBER, align 4
  %350 = call i64 @CSR_READ_4(%struct.et_softc* %348, i32 %349)
  %351 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %352 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %354, %350
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %352, align 4
  %357 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %358 = load i32, i32* @ET_STAT_TX_CRC_ERR, align 4
  %359 = call i64 @CSR_READ_4(%struct.et_softc* %357, i32 %358)
  %360 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %361 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %359
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %361, align 4
  %366 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %367 = load i32, i32* @ET_STAT_TX_CTL, align 4
  %368 = call i64 @CSR_READ_4(%struct.et_softc* %366, i32 %367)
  %369 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %370 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %368
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %370, align 4
  %375 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %376 = load i32, i32* @ET_STAT_TX_OVERSIZE, align 4
  %377 = call i64 @CSR_READ_4(%struct.et_softc* %375, i32 %376)
  %378 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %379 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %381, %377
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %379, align 4
  %384 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %385 = load i32, i32* @ET_STAT_TX_UNDERSIZE, align 4
  %386 = call i64 @CSR_READ_4(%struct.et_softc* %384, i32 %385)
  %387 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %388 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %390, %386
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %388, align 4
  %393 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %394 = load i32, i32* @ET_STAT_TX_FRAG, align 4
  %395 = call i64 @CSR_READ_4(%struct.et_softc* %393, i32 %394)
  %396 = load %struct.et_hw_stats*, %struct.et_hw_stats** %3, align 8
  %397 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = add nsw i64 %399, %395
  %401 = trunc i64 %400 to i32
  store i32 %401, i32* %397, align 4
  ret void
}

declare dso_local i64 @CSR_READ_4(%struct.et_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
